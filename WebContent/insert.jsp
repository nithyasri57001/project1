
<%@page import="java.sql.*" %>
<%@page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserted Sucessfully</title>
</head>
<body>
<%
out.println("starting");
String n= request.getParameter("n");
out.println(n);
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1523:project","hr","hr");
	out.println("conn");
	PreparedStatement ps = con.prepareStatement("insert into dummy values(?)");
	out.println("insertstatemnt");
	ps.setString(1,n);
	out.println("inserted");
	
	int i = ps.executeUpdate();
	
	
	if(i>0){
		out.println(n);
		}
	else{
		System.out.println("fail");
	}
}catch(Exception e){
	System.out.println(e);
}
 %>