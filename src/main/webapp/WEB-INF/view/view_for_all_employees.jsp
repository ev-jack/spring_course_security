<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Евгений Науменко
  Date: 19.03.2023
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View All Emps</title>
</head>
<body>

    <h3>Information for all employees</h3>
    <br><br>

    <security:authorize access="hasRole('HR')">
    <input type="button" value="Salary"
        onclick="window.location.href = 'hr_info'">
    Only for HR staff
    <br><br>
    </security:authorize>

    <security:authorize access="hasRole('MANAGER')">
    <input type="button" value="Performance"
           onclick="window.location.href = 'manager_info'">
    Only for managers
    </security:authorize>

</body>
</html>
