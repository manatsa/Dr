<%@ page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>New User</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="../css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>

<body>
<jsp:include page="../includes/header.jsp" />
<section class="container padded">

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="panel-title text-uppercase ">USER : ${user.firstName} ${user.lastName}</h1>

        </div>
        <div class="panel-body">
            <div class="row text-center pad-10-60">
                <a class="btn btn-warning pull-left text-danger" href="/dr/user/reset/${user.id}"> <span class="glyphicon glyphicon-refresh" /> Reset Password</a>
                <a class="btn btn-warning pull-right text-danger" onclick="window.history.back()"><span class="glyphicon glyphicon-remove" /> </a>
            </div>
            <table class="table table-responsive table-striped">
                <thead>
                <th class="text-primary">PROPERTY NAME</th>
                <th class="text-primary">PROPERTY VALUE</th>
                </thead>
                <tbody>
                    <tr>
                        <td>USER ID :</td>
                        <td>${user.id}</td>
                    </tr>
                    <tr>
                        <td>FIRST NAME :</td>
                        <td>${user.firstName}</td>
                    </tr>
                    <tr>
                        <td>LAST NAME :</td>
                        <td>${user.lastName}</td>
                    </tr>
                    <tr>
                        <td>USER NAME :</td>
                        <td>${user.userName}</td>
                    </tr>
                    <tr>
                        <td>USER ROLE :</td>
                        <td>${user.role}</td>
                    </tr>
                    <tr>
                        <td>CREATED BY:</td>
                        <td>${user.createdBy}</td>
                    </tr>
                    <tr>
                            <td>CREATE DATE :</td>
                        <td><fmt:formatDate value="${user.createdDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                    </tr>
                    <tr>
                        <td>LAST MODIFIED BY:</td>
                        <td>${user.lastModifiedBy}</td>
                    </tr>
                    <tr>
                        <td>LAST MODIFIED DATE :</td>
                        <td><fmt:formatDate value="${user.lastModifiedDate}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                    </tr>


                </tbody>
            </table>

        </div>
    </div>



</section>
</body>
</html>