<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: UserPC
  Date: 05.06.2021
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Information for all employees</h2>
<br><br>
<security:authorize access="hasRole('HR')">
    <input type="button" value="Salary" onclick="window.location.href='hr_info'">
    On for HR staff
</security:authorize>
<br><br>
<security:authorize access="hasRole('MANAGER')">
    <input type="button" value="Performance" onclick="window.location.href='manager_info'">
    On for Managers
</security:authorize>


</body>
</html>
