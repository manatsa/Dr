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
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>HOSPITAL DETAILS</title>
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" media="screen" href="/css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" crossorigin="anonymous">

    <script type="text/javascript" src="/webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>

<body>
<jsp:include page="../includes/header.jsp" />
<section class="container padded">

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="panel-title text-uppercase ">HOSPITAL : ${hospital.name}</h1>

        </div>
        <div class="panel-body">
            <div class="row text-center pad-10-60">
                <a class="btn btn-warning pull-right text-danger" href="/hospital/"><span class="glyphicon glyphicon-remove" /> </a>
            </div>
            <table class="table table-responsive table-striped">
                <thead>
                <th class="text-primary">PROPERTY NAME</th>
                <th class="text-primary">PROPERTY VALUE</th>
                </thead>
                <tbody>
                    <tr>
                        <td>HOSPITAL ID :</td>
                        <td>${hospital.id}</td>
                    </tr>
                    <tr>
                        <td>HOSPITAL NAME :</td>
                        <td>${hospital.name}</td>
                    </tr>

                    <%--<tr>--%>
                        <%--<td>PHONE NUMBER :</td>--%>
                        <%--<td>${hospital.phone}</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>CREATED BY:</td>--%>
                        <%--<td>${patient.creator}</td>--%>
                    <%--</tr>--%>
                    <tr>
                            <td>CREATE DATE :</td>
                        <td><fmt:formatDate value="${hospital.createDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                    </tr>
                    <tr>
                        <td>MODIFY DATE :</td>
                        <td><fmt:formatDate value="${hospital.modifyDate}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                    </tr>
                    <tr>
                        <td>MOBILE NUMBER:</td>
                        <td>${hospital.phone}</td>
                    </tr>
                    <tr>
                        <td>EMAIL ADDRESS:</td>
                        <td>${hospital.address}</td>
                    </tr>

                </tbody>
            </table>

        </div>
    </div>



</section>
</body>
</html>