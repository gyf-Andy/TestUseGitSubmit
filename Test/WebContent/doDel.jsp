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
		
		int a=st.executeUpdate("delete from  student where sno='"+sno+"'");
		if (a!=0){
			out.println("删除成功!<a href='main.jsp'>go back</a>");
		}else{
			out.println("删除失败!<a href='main.jsp'>go back</a> ");
		}
		
		st.close();
		con.close();
	
	%>
</body>
</html>