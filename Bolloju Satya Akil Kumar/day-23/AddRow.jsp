
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

int id = Integer.parseInt(request.getParameter("AddRow"));
Class.forName("com.mysql.jdbc.Driver");
String urlString="jdbc:mysql://localhost:3306/STUDENTS";
Connection con=DriverManager.getConnection(urlString,"root","");
Statement st=con.createStatement();



st.executeUpdate("select * from STUDENTS WHERE STUDENT_ID='"+id+"'");
response.sendRedirect("View.jsp");
%>

</body>
</html>