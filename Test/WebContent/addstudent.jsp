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
	<%
		Class.forName("com.mysql.jdbc.Driver");
	    String conStr="jdbc:mysql://localhost/studentdb2?useUnicode=true&characterEncoding=utf-8";
	    Connection con=DriverManager.getConnection(conStr,"root","root");
		Statement st=con.createStatement();
		ResultSet rs=null;
		request.setCharacterEncoding("utf-8");
		String sno=request.getParameter("sno");
		String sname=request.getParameter("sname");
		int a=st.executeUpdate("insert into student value('"+sno+"','"+sname+"')");
		if (a!=0){
			out.println("增加成功!<a href='addview.jsp'>go back</a> <a href='main.jsp'>go main</a> ");
		}else{
			out.println("增加失败!<a href='addview.jsp'>go back</a> ");
		}
		
		st.close();
		con.close();
	
	%>
</body>
</html>