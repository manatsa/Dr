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
    <meta name="viewport" content="width=devic-ewidth, initial-scale=1">
    <title>PATIENT DETAILS</title>
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
            <h1 class="panel-title text-uppercase ">PATIENT : ${patient.firstName} ${patient.lastName}</h1>

        </div>
        <div class="panel-body">
            <div class="row text-center pad-10-60">
                <a class="btn btn-primary pull-left text-primary" href="/dr/kinsman/view/${patient.kinsman.id}">Show Kinsman </a>
                <a class="btn btn-warning pull-right text-danger" onclick="window.history.back()"><span class="glyphicon glyphicon-remove" /> </a>
            </div>
            <table class="table table-responsive table-striped">
                <thead>
                <th class="text-primary">PROPERTY NAME</th>
                <th class="text-primary">PROPERTY VALUE</th>
                </thead>
                <tbody>
                    <tr>
                        <td>PATIENT ID :</td>
                        <td>${patient.id}</td>
                    </tr>
                    <tr>
                        <td>FIRST NAME :</td>
                        <td>${patient.firstName}</td>
                    </tr>
                    <tr>
                        <td>LAST NAME :</td>
                        <td>${patient.lastName}</td>
                    </tr>
                    <tr>
                        <td>ID NUMBER :</td>
                        <td>${patient.idNumber}</td>
                    </tr>
                    <tr>
                        <td>MOBILE NUMBER:</td>
                        <td>${patient.phone}</td>
                    </tr>
                    <tr>
                        <td>EMAIL ADDRESS:</td>
                        <td>${patient.address}</td>
                    </tr>
                    <tr>
                            <td>CREATE DATE :</td>
                        <td><fmt:formatDate value="${patient.createdDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                    </tr>
                    <tr>
                        <td>CREATED BY:</td>
                        <td>${patient.createdBy}</td>
                    </tr>
                    <tr>
                        <td>LAST MODIFIED BY:</td>
                        <td>${patient.lastModifiedBy}</td>
                    </tr>
                    <tr>
                        <td>LAST MODIFY DATE :</td>
                        <td><fmt:formatDate value="${patient.lastModifiedDate}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                    </tr>


                </tbody>
            </table>

        </div>
    </div>



</section>
</body>
</html>