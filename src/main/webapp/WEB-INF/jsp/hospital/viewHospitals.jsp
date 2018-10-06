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
    <title>All Hospitals</title>

    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.7/css/mdb.min.css" />--%>
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" media="screen" href="/css/main.css">
    <link rel="stylesheet" media="screen" href="/css/datatables.min.css">
    <link rel="shortcut icon" href="../../../favicon.ico">
    <%--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">--%>





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
            <h1 class="panel-title text-uppercase ">All Hospitals </h1>
        </div>

        <div class="panel-body">
            <div class="row text-center pad-5-60">

                <a class="btn btn-warning pull-right text-danger" href="/"><span class="glyphicon glyphicon-remove" /> </a>
            </div>
            <div id="tableBtns" class="row">

            </div>

                    <table class="table table-responsive table-striped" id="users_table">
                        <thead>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>PHONE</th>
                        <th>EMAIL</th>
                        <th>CREATE DATE</th>
                        <th>CONTACT</th>
                        <th>VIEW</th>
                        <th>EDIT</th>
                        <th>DELETE </th>
                        </thead>
                        <tbody>
                        <c:forEach var="hospital" items="${hospitals}">
                            <tr>
                                <td>${hospital.id}</td>
                                <td>${hospital.name}</td>
                                <td>${hospital.phone}</td>
                                <td>${hospital.email}</td>
                                <td><fmt:formatDate value="${hospital.createDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                                <td> ${hospital.contact}</td>
                                <td><a class="" href="/hospital/view/${hospital.id}" ><span class="glyphicon glyphicon-play-circle" /> </a> </td>
                                <td><a class="" href="/hospital/edit/${hospital.id}" ><span class="glyphicon glyphicon-pencil" /> </a> </td>
                                <td><a class="" href="/hospital/delete/${hospital.id}" ><span class="glyphicon glyphicon-remove-circle" /> </a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
            </div>

        </div>
    </div>



</section>

<script type="text/javascript" src="../webjars/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../webjars/popper.js/1.14.4/popper.min.js"></script>
<script type="text/javascript" src="../webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
<script type="text/javascript" src="../js/datatables.min.js"></script>
<%--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.7/js/mdb.min.js"></script>--%>
<%--<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>--%>
<script type="text/javascript" src="../js/main.js"></script>
<script>
   /*$("#users_table").DataTable( {
       dom: 'Bfrtip',
       buttons: [
           'copy', 'excel', 'pdf'
       ]
   } );*/

   var table = $('#users_table').DataTable( {
       buttons: [
           'copy', 'excel', 'pdf'
       ]
   } );

   table.buttons().container()
       .appendTo( $('#tableBtns', table.table().container() ) );
</script>
<%--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.7/js/mdb.min.js"></script>--%>
<script type="text/javascript" src="/js/main.js"></script>
</body>
</html>
