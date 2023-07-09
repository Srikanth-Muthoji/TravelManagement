<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
//int place_id=Integer.parseInt(request.getParameter("id"));
String email=session.getAttribute("email").toString();

try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from likes where email='"+email+"' and place_id='"+id+"'");
	if(rs.next())
	{
		%>
		<script>alert("you have alredy liked")</script>
		<jsp:include page="viewplace1.jsp"/>
		<%
		}
			else
			{
			
			//int n=rs.getInt(8);
			
			Statement st1=con.createStatement();
			ResultSet rs1=st.executeQuery("select likes from place where id='"+id+"'");
					
			PreparedStatement ps=con.prepareStatement("insert into likes(place_id,email) values(?,?)");
			ps.setInt(1,id);
			ps.setString(2,email);
			int n=ps.executeUpdate();
			
			int like=0;
			while(rs1.next()){
				like=rs1.getInt(1);
				like++;
				break;
			}
			
			
			PreparedStatement ps1=con.prepareStatement("update place set likes=? where id='"+id+"'");
	 ps1.setInt(1, like);
			int n1=ps1.executeUpdate();
		%>
		 <script>alret("like sucesss")</script>
		 <jsp:include page="viewplace1.jsp"/>
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