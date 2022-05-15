<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Header</title>
</head>
<body>
    <c:if test= "${pageContext.request.requestURI != '/WEB-INF/views/login.jsp'
            && pageContext.request.requestURI != '/WEB-INF/views/index.jsp'}">
        <a href="${pageContext.request.contextPath}/index">Back</a>
    </c:if>
    <c:choose>
        <c:when test= "${sessionScope.driver_id != null}">
            <a href="${pageContext.request.contextPath}/logout">Logout</a>
        </c:when>
        <c:otherwise>
            <c:if test= "${pageContext.request.requestURI != '/WEB-INF/views/drivers/add.jsp'}">
            <a href="${pageContext.request.contextPath}/drivers/add">Create driver</a>
            </c:if>
        </c:otherwise>
    </c:choose>
</body>
</html>
