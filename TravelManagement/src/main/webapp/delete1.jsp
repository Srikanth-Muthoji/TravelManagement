<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
try
{
	
	PreparedStatement ps=con.prepareStatement("delete from package where id='"+id+"'");
	int n=ps.executeUpdate();
	if(n>0)
	{
		%>
		 <script>alret("delete sucesss")</script>
		 <jsp:include page="viewpackage.jsp"/>
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