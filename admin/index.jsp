<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="org.hhs.db.IOService" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title> Admin</title>
</head>
<body>
    <h1>Admin Homepage</h1>
    <a href="${contextPath}/include/logout.jsp"> Logout</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Full Name</th>
            </tr>
        </thead>
        <tbody>
            <%
                PreparedStatement ps = IOService.getStatement("SELECT user_id, user_name, full_name FROM users;");
                ResultSet rs = IOService.executeQuery(ps);

                while(rs.next()){
                    %>
                    <tr>
                        <td><%= rs.getInt("user_id") %></td>
                        <td><%= rs.getString("user_name") %></td>
                        <td><%= rs.getString("full_name") %></td>
                    </tr>
                    <%
                }
                IOService.close(rs, ps);

            %>
        </tbody>
</body>
</html>
