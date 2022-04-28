<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<% Class.forName("com.mysql.jdbc.Driver"); %>
<% Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",""); %>
<% Statement stmt = conn.createStatement(); %>
<% ResultSet rs = stmt.executeQuery("SHOW DATABASES"); %>

<body>
	<form action="DBShowView.jsp" method="post">
	<h1>Connect to DataBase</h1>
	<hr><br>
	<table border='1'>
		<tr>
			<td>Database name: </td>
			<td>
				<select name="dbName">
					<% while(rs.next()) { %>
						<option value=<%=rs.getString(1) %>><%=rs.getString(1) %></option>
					<% } %>
				</select>
			</td>
		</tr>
		<tr>
			<td>Table name: </td>
			<td><input type="text" name="tbName" /></td>
		</tr>
	</table>
	<br><br>
	<input type="submit" value="Show Table" />
	</form>
	<% conn.close(); %>
</body>
</html>