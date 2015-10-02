<%@ page language="java" import="java.sql.*"%>
<%
if(session.getAttribute("SomeAttribute")== null)
{
give ur message and redirect
to some page say login page
ex:- out.println("<script>parent.location.href='Login.jsp'</script>");

}
%>
and on logout write this code

<%

session.invalidate();
out.println("<script>parent.location.href='Login.jsp'</script>");
%>
<html>   
<head> My Logout page   </head>    
<body>
 <a href="index.jsp"> Login again </a>    
    
    
</body>    
    
    
    </html>