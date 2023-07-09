<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
String title=request.getParameter("title");
String description=request.getParameter("description");
String nearby=request.getParameter("nearby");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
String city=request.getParameter("city");
try
{
	
	PreparedStatement ps=con.prepareStatement("update place set title=?,description=?,nearby=?,contact=?,address=?,city=? where id=?");
	ps.setString(1,title);
	ps.setString(2,description);
	ps.setString(3,nearby);
	ps.setString(4,contact);
	ps.setString(5,address);
	ps.setString(6,city);
	ps.setInt(7,id);
	
	int n=ps.executeUpdate();
	if(n>0)
	{
		 %>
		 <script>alret("update sucesss")</script>
		 <jsp:include page="viewplace.jsp"/>
		 <%
	}
	else
	{
		 %>
		 <script>alret("update unsucesss")</script>
		 <jsp:include page="update.jsp"/>
		 <%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>