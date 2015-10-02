<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	session.invalidate();
%>
<html>
<head>Logout</head>
<body>

    <h1>You are Logged Out</h1>
 <a href="${contextPath}"> Login again </a>


</body>
</html>
