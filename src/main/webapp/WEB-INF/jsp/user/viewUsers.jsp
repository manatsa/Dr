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
<%! boolean err=false;
    String cl="text-success";
    String msg="";
%>
<c:set var="err" value="${err}" />

<c:if test="${err}==false">
    <c:set var="cl" value="text-danger" />
</c:if>
<section class="container padded">

    <div class="row">
        <span class="<%=cl%>">${message}</span>
    </div>
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
