<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="signUp" method="post">
		用户名：&nbsp;<input type="text" style="margin: 3px" id='username'
			name="username"><br /> 密码：&nbsp;<input type="text"
			style="margin: 3px" id='password' name="password"><br /> <input
			type="submit" value="注册">
	</form>
</body>
<script type="text/javascript"
	src="../Web_content/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	/**
	 * 绑定事件
	 */
	$("document").ready(function() {
		$("#username").blur(function() {
			$.ajax({
				url : "validUserName",
				type : "POST",
				dataType: "json",
				data : {
					"username" : $("#username").text()
				},
				success : function(data) {
					alert(data);
				}
			});
		})
	});
</script>
</html>