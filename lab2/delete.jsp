<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix ="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete success</title>
</head>
<body>
	<center>
	Delete <s:property value="title"/>
	Succeed!<br>
	--------------------------------------------------------<br>
	<br>
	<input type="button" value="back to home page" onclick="location.href='hello.jsp'"/>
	</center>
</body>
</html>
