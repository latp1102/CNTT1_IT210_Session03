<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Thế Phong
  Date: 4/7/2026
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Employee List</h1>
    <table border="1" cellspacing="1" cellpadding="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>FullName</th>
                <th>Department</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${employee}" var="employee" >
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.fullName}</td>
                    <td>${employee.department}</td>
                    <td>${employee.salary}</td>
                    <td>
                        <c:choose>
                            <c:when test="${employee.salary > 1000000}">
                                Mức lương cao
                            </c:when>
                            <c:otherwise>
                                Mức lương thấp
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
