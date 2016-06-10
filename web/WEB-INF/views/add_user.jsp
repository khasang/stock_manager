
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <style>
        .error{
            color:red;
        }
    </style>
</head>
<body>
<a href="/">Home</a>
<div class="container">

<sf:form method="POST" commandName="user">
    <table class="table">

    <tr>
        <td>First Name: <sf:input path="firstName" /><br/></td>
        <td><form:errors path="firstName" cssClass="error"></form:errors></td>
    </tr>
        <tr>
            <td>Last Name: <sf:input path="lastName" /><br/></td>
            <td><form:errors path="lastName" cssClass="error"></form:errors></td>
        </tr><tr>
            <td>Email: <sf:input type="email" path="email" /><br/></td>
            <td><form:errors path="email" cssClass="error"></form:errors></td>
        </tr><tr>
            <td>Username: <sf:input path="login" /><br/></td>
            <td><form:errors path="login" cssClass="error"></form:errors></td>
        </tr>
        <tr>
            <td>Password: <sf:password path="password" /><br/></td>
            <td><form:errors path="password" cssClass="error"></form:errors></td>
        </tr>
        </tr><tr>
            <td>Role: <sf:input path="role" /><br/></td>
            <td><form:errors path="role" cssClass="error"></form:errors></td>
        </tr>
    <input type="submit" value="Register" />
    </table>
</sf:form>
</div>
</body>
</html>