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
    <title>All System Users</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.7/css/mdb.min.css" />
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" media="screen" href="/css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">




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
            <div id="myContainer">

                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" aria-describedby="basic-addon1">
                    <span class="input-group-addon glyphicon glyphicon-search" id="basic-addon1"></span>
                </div>

                </div>

                    <table class="table table-responsive table-striped" id="users_table">
                        <thead>
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>
                        <th>USER NAME</th>
                        <th>CREATOR</th>
                        <th>CREATE DATE</th>
                        <th>ROLE</th>
                        <th>VIEW  </th>
                        <th>EDIT  </th>
                        <th>PASS RESET  </th>
                        <th>DELETE </th>
                        </thead>
                        <tbody>
                        <c:forEach var="user" items="${users}">
                            <tr>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td>${user.userName}</td>
                                <td>${user.creator}</td>
                                <td><fmt:formatDate value="${user.createDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                                <td> ${user.role}</td>
                                <td><a class="" href="/user/view/${user.id}" ><span class="glyphicon glyphicon-play-circle" /> </a> </td>
                                <td><a class="" href="/user/edit/${user.id}" ><span class="glyphicon glyphicon-pencil" /> </a> </td>
                                <td><a class="" href="/user/reset/${user.id}" ><span class="glyphicon glyphicon-refresh" /> </a></td>
                                <td><a class="" href="/user/delete/${user.id}" ><span class="glyphicon glyphicon-remove-circle" /> </a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
            </div>

        </div>
    </div>



</section>

<script type="text/javascript" src="/webjars/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="/js/jquery.tableFilter.js"></script>
<script>
    //search filtering for table of students
    $(document).ready(function(){
        $('#filter-container').tableFilter({tableID: '#students', autofocus: true});
    });
</script>
<%--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.7/js/mdb.min.js"></script>--%>
<script type="text/javascript" src="/js/main.js"></script>
</body>
</html>

<%--<!doctype html>--%>
<%--<html class="no-js" lang="">--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">--%>
    <%--<title>jQuery Table Filtering Demo Page</title>--%>
    <%--<meta name="description" content="">--%>
    <%--<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>

    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">--%>
    <%----%>


<%--</head>--%>
<%--<body>--%>
<%--<div id="jquery-script-menu">--%>


<%--<div class="container" style="margin-top:150px;">--%>
    <%--<h1>jQuery Table Filtering Demo Page</h1>--%>
    <%--<div class="row">--%>
        <%--<div id="filter-container" class="panel panel-default col-md-12" style="padding:20px;">--%>
            <%--<div class="form-group">--%>
                <%--<input class="form-control" type="text" id="filter" placeholder="...type here to filter students by name...">--%>
            <%--</div>--%>
            <%--<table class="table table-striped user-table table-inverse" id = 'students' style="width:100%;">--%>
                <%--<!-- Table Headings -->--%>
                <%--<thead>--%>
                <%--<th>Student</th><th>Email</th><th>Banner Id</th>--%>
                <%--</thead>--%>
                <%--<!-- Table Body -->--%>
                <%--<tbody >--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Ellen Ripley</td>--%>
                    <%--<td>eripley@nostromo.com</td>--%>
                    <%--<td>434234344557</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Dwayne Hicks</td>--%>
                    <%--<td>dhicks@sulaco.com</td>--%>
                    <%--<td>2334676663757</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Rebecca "Newt" Jordan</td>--%>
                    <%--<td>newt@lv426.com</td>--%>
                    <%--<td>56578476456566</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Carter Burke</td>--%>
                    <%--<td>cburke@weyland-yutani.com</td>--%>
                    <%--<td>5774654565465</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">William Hudson</td>--%>
                    <%--<td>whudson@sulaco.com</td>--%>
                    <%--<td>5774564567676</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Bishop</td>--%>
                    <%--<td>bishop@weyland-yutani.com</td>--%>
                    <%--<td>56546768767676</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Arthur Dallas</td>--%>
                    <%--<td>dallas@nostromo.com</td>--%>
                    <%--<td>56678877676765</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Joan Lambert</td>--%>
                    <%--<td>lambert@nostromo.com</td>--%>
                    <%--<td>45645776767676</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Samuel Brett</td>--%>
                    <%--<td>brett@nostromo.com</td>--%>
                    <%--<td>23434343435466</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Gilbert Kane</td>--%>
                    <%--<td>kane@nostromo.com</td>--%>
                    <%--<td>98066769335553</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Dennis Parker</td>--%>
                    <%--<td>parker@nostromo.com</td>--%>
                    <%--<td>272758787833322</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td class="filter-cell">Jones the Cat</td>--%>
                    <%--<td>jonesy@nostromo.com</td>--%>
                    <%--<td>426789211173289</td>--%>
                <%--</tr>--%>
                <%--</tbody>--%>
            <%--</table>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<hr>--%>

    <%--<footer>--%>
        <%--<p>&copy; UNM A&amp;S 2017</p>--%>
    <%--</footer>--%>
<%--</div> <!-- /container -->        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>

<%--<script src="/js/jquery.tableFilter.js"></script>--%>
<%--<script>--%>
    <%--//search filtering for table of students--%>
    <%--$(document).ready(function(){--%>
        <%--$('#filter-container').tableFilter({tableID: '#students', autofocus: true});--%>
    <%--});--%>
<%--</script>--%>

<%--</body>--%>
<%--</html>--%>