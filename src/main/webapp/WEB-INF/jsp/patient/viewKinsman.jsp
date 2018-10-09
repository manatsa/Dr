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
    <title>KINSMAN DETAILS</title>
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
            <h1 class="panel-title text-uppercase ">KINSMAN : ${kinsman.firstName} ${kinsman.lastName}</h1>

        </div>
        <div class="panel-body">
            <div class="row text-center pad-10-60">
                <a class="btn btn-warning pull-right text-danger" onclick="window.history.back()"><span class="glyphicon glyphicon-remove" /> </a>
            </div>
            <table class="table table-responsive table-striped">
                <thead>
                <th class="text-primary">PROPERTY NAME</th>
                <th class="text-primary">PROPERTY VALUE</th>
                </thead>
                <tbody>
                    <tr>
                        <td> ID :</td>
                        <td>${kinsman.id}</td>
                    </tr>
                    <tr>
                        <td>FIRST NAME :</td>
                        <td>${kinsman.firstName}</td>
                    </tr>
                    <tr>
                        <td>LAST NAME :</td>
                        <td>${kinsman.lastName}</td>
                    </tr>
                    <tr>
                        <td>ID NUMBER :</td>
                        <td>${kinsman.idNumber}</td>
                    </tr>
                    <tr>
                        <td>MOBILE NUMBER :</td>
                        <td>${kinsman.phone}</td>
                    </tr>
                    <tr>
                        <td>EMAIL ADDRESS :</td>
                        <td>${kinsman.email}</td>
                    </tr>

                    <tr>
                        <td>CREATE DATE :</td>
                        <td><fmt:formatDate value="${kinsman.createdDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                    </tr>
                    <tr>
                        <td>CREATED BY:</td>
                        <td>${kinsman.createdBy}</td>
                    </tr>
                    <tr>
                        <td>LAST MODIFIED BY:</td>
                        <td>${kinsman.lastModifiedBy}</td>
                    </tr>
                    <tr>
                        <td>LAST MODIFY DATE :</td>
                        <td><fmt:formatDate value="${kinsman.lastModifiedDate}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                    </tr>

                </tbody>
            </table>

        </div>
    </div>



</section>
</body>
</html>