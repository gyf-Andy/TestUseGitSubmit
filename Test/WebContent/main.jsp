<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	import="java.sql.*"
    pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SIAS</title>
</head>
<form action="" method="post">
		search key<input type="text" name="sname" />	
		<input type="submit" name="submit"  value="查询"/>
	</form>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
	    String conStr="jdbc:mysql://localhost/studentdb2?useUnicode=true&characterEncoding=utf-8";
	    Connection con=DriverManager.getConnection(conStr,"root","root");
		//Statement st=con.createStatement();
		PreparedStatement st=null;
		ResultSet rs=null;
		request.setCharacterEncoding("utf-8");		
		String sname=request.getParameter("sname");
		if (sname==null){
			st=con.prepareStatement("select * from student");
			rs=st.executeQuery();	
		}else{
			st=con.prepareStatement("select * from student where sname like ?");
			st.setString(1, "%"+sname+"%");
			rs=st.executeQuery();
		}
		
		while(rs.next()){
			out.println(rs.getString(1)+" "+rs.getString(2)+"<a href='doDel.jsp?sno="+rs.getString(1)+"'><img src='del.jpg' style='width:20px;20px;border:0px;'></a> <a href='showEdit.jsp?sno="+rs.getString(1)+"' >edit</a><br>");
		}
		rs.close();
		st.close();
		con.close();
	
	%>
</body>
</html>