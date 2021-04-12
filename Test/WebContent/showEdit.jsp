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
		System.out.println(sno);
		rs=st.executeQuery("select * from student where sno='"+sno+"'");
		while(rs.next()){
			
			%>
			<form action="doEdit.jsp" method="post">
		sno:<input type="text" name="sno" value="<%=rs.getString(1)%>" readonly="readonly"/><br>
		sname:<input type="text" name="sname" value="<%=rs.getString(2)%>"/><br>
		<input type="submit" name="submit"  value="确定修改"/>
	</form>
			<%
			
		}
		rs.close();
		st.close();
		con.close();
	
	%>
</body>
</html>