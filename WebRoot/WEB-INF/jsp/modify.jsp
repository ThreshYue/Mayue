<%@ page language="java" import="java.util.*,com.cqu.financial.entity.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'list.jsp' starting page</title>
		<script type="text/javascript">
	
</script>
	</head>
	<body>
		<form action="domodify" method="post">
			<input name="empno" value="${emp.empno}" style="display: none">
			姓名：&nbsp;
			<input type="text"
				style="margin: 3px; color: #aaa" name="ename"
				value="${emp.ename }">
			<br />
			职业：&nbsp;
			<input type="text" style="margin: 3px" name="job"
				value="${emp.job }">
			<br />
			<input type="submit" value="提交">
		</form>
	</body>
</html>

