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
    <title>New User</title>
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" media="screen" href="/css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script type="text/javascript" src="/webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>

<body>
<jsp:include page="../includes/header.jsp" />
<section class="container padded">

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="panel-title text-uppercase ">All System users</h1>
        </div>
        <div class="panel-body">
            <div class="row text-center pad-5-60">
                <a class="btn btn-warning pull-right text-danger" href="/"><span class="glyphicon glyphicon-remove" /> </a>
            </div>
           <table class="table table-responsive table-striped">
               <thead>
                    <th>USER ID</th>
                    <th>FIRST NAME</th>
                    <th>LAST NAME</th>
                    <th>USERNAME</th>
                    <th>CREATOR</th>
                    <th>CREATE_DATE</th>
                    <th>MODIFY DATE</th>
                    <th>ROLE</th>
                    <th>VIEW  </th>
                    <th>EDIT  </th>
                    <th>DELETE <span class="glyphicon glyphicon-remove-circle"></span> </th>
               </thead>
               <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.userName}</td>
                            <td>${user.creator}</td>
                            <td><fmt:formatDate value="${user.createDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                            <td><fmt:formatDate value="${user.createDate}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                            <td>${user.role.role}</td>
                            <td><a class="" href="/user/view/${user.id}" ><span class="glyphicon glyphicon-play-circle" /> </a> </td>
                            <td><a class="" href="/user/edit/${user.id}" ><span class="glyphicon glyphicon-pencil" /> </a> </td>
                            <td></td>
                        </tr>
                    </c:forEach>
               </tbody>
           </table>
        </div>
    </div>



</section>
</body>
</html>