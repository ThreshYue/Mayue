<%@ page language="java" import="java.util.*,com.cqu.financial.entity.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'list.jsp' starting page</title>
  </head>
  <body>
 		<a href="goadd.do">新增</a>
 		<table border="1" cellspacing="0">
  		<tr>
  			<td>empno</td>
  			<td>ename</td>
  			<td>job</td>
  			<td>操作</td>
  		</tr>
  		<c:choose>
  			<c:when test="${emps == null}">
  				<h1>没有数据</h1>
  			</c:when>
  			<c:otherwise>
  				<c:forEach items="${emps}" var="v">
  					<tr>
  						<td>${v.empno }</td>
  						<td>${v.ename }</td>
  						<td>${v.job }</td>
  						<td>
  							<a href="goModify?empno=${v.empno }">修改</a>|
  							<a href="del?empno=${v.empno }">删除</a>
  						</td>
  					</tr>
  				</c:forEach>
  			</c:otherwise>
  		</c:choose>
  	</table>
  </body>
</html>
  						
