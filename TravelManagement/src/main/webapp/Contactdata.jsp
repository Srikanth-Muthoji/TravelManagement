<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="connection.jsp" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

out.println("<table class=' table-bordered table-striped table-dark'>");
out.println("<tr>");
out.println("<th>ID</th></th><th>EmployeePassword</th>&nbsp<th>&nbsp<th>Delete</th><th>Update</th>");
out.println("</tr>");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from Contact");

while(rs.next()){
	out.println("<tr>");
	out.println("<td>'"+rs.getString(1)+"'</td><td>'"+rs.getString(2)+"'</td><td>'"+rs.getString(3)+"'</td><td>'"+rs.getString(4)+"'</td>'");
	out.println("</tr>");
}
out.println("</table>");
%>
</body>
</html>