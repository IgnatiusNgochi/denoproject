<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title> Admin</title>
</head>
<body>
    <h1>Admin Homepage</h1>
    <a href="${contextPath}/include/logout.jsp"> Logout</a>
</body>
</html>
