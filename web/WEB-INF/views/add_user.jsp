<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Registration</title>
    <link href="../css/starter-template.css" rel="stylesheet">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <script src="js/logout.js"></script>
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="activeId" value="addUserMenuItem"/>
</jsp:include>
<div class="container">
    <div class="starter-template">
        <br>
        <div class="panel panel-default">
            <div class="panel-heading" align="left"><label>Input user registration info</label></div>
            <div class="panel-body">
                <sf:form method="POST" commandName="user">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td><label>First Name:</label></td>
                            <td><sf:input path="firstName"/></td>
                            <td><form:errors path="firstName" cssClass="error"></form:errors></td>
                        </tr>
                        <tr>
                            <td><label>Last Name:</label></td>
                            <td><sf:input path="lastName"/></td>
                            <td><form:errors path="lastName" cssClass="error"></form:errors></td>
                        </tr>
                        <tr>
                            <td><label>Email:</label></td>
                            <td><sf:input type="email" path="email"/></td>
                            <td><form:errors path="email" cssClass="error"></form:errors></td>
                        </tr>
                        <tr>
                            <td><label>Username:</label></td>
                            <td><sf:input path="login"/></td>
                            <td><form:errors path="login" cssClass="error"></form:errors></td>
                        </tr>
                        <tr>
                            <td><label>Password:</label></td>
                            <td><sf:password path="password"/></td>
                            <td><form:errors path="password" cssClass="error"></form:errors></td>
                        </tr>
                        </tr>
                        <tr>
                            <td><form:select path="role" items="${roleList}"/></td>
                            <td><form:errors path="role" cssClass="error"></form:errors></td>
                        </tr>
                        </tbody>
                        <tr>
                            <td>
                                <input type="submit" value="Register"/>
                            </td>
                        </tr>
                    </table>
                </sf:form>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>

<script aria-hidden="true" type="application/adlite" id="adlite_id_fknghnkgncdocekndckeeklpkjgickgc"
        style="display: none;"></script>
<c:url value="/logout" var="logoutUrl"/>
<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</body>
</html>