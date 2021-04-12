<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	import="java.sql.*"
    pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SIAS</title>
</head>
<body>
	<form action="addstudent.jsp" method="post">
		sno:<input type="text" name="sno" /><br>
		sname:<input type="text" name="sname" /><br>
		<input type="submit" name="submit"  value="增加"/>
	</form>
</body>
</html>