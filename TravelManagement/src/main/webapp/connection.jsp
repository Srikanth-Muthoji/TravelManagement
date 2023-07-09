 <%@ page import="java.util.*,java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/travelmanagement","root","root");
 
%>
 