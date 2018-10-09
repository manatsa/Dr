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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/autofill/2.3.1/css/autoFill.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/fixedcolumns/3.2.6/css/fixedColumns.dataTables.min.css" />
    <link rel="stylesheet"  href="https://cdn.datatables.net/colreorder/1.5.1/css/colReorder.dataTables.min.css" />
    <link rel="stylesheet"  href="https://cdn.datatables.net/fixedheader/3.1.5/css/fixedHeader.dataTables.min.css" />
    <link rel="stylesheet"  href="https://cdn.datatables.net/keytable/2.4.1/css/keyTable.dataTables.min.css" />
    <link rel="stylesheet"  href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" />
    <link rel="stylesheet"  href="https://cdn.datatables.net/rowgroup/1.0.4/css/rowGroup.dataTables.min.css" />
    <link rel="stylesheet"  href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css" />
    <link rel="stylesheet"  href="../css/main.css" />
    <link rel="shortcut icon" href="../../../favicon.ico" />




<body>
<jsp:include page="../includes/header.jsp" />

<section class="container padded">

    <div class="row  pad-5-5 ">
        <div  data-role="alert" class="(${show}">${message}
            <a href="#" class="close pad-5-5" data-dismiss="alert" aria-label="close">&times;</a>
        </div>
    </div>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="panel-title text-uppercase ">All Hospitals </h1>
        </div>

        <div class="panel-body">
            <div class="row text-center pad-5-60">

                <a class="btn btn-warning pull-right text-danger" href="/dr/"><span class="glyphicon glyphicon-remove" /> </a>
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
                        <%--<th>DELETE </th>--%>
                        </thead>
                        <tbody>
                        <c:forEach var="hospital" items="${hospitals}">
                            <tr>
                                <td>${hospital.id}</td>
                                <td>${hospital.name}</td>
                                <td>${hospital.phone}</td>
                                <td>${hospital.email}</td>
                                <td><fmt:formatDate value="${hospital.createdDate}" pattern="dd-MM-yyyy HH:mm:ss"/> </td>
                                <td> ${hospital.contact}</td>
                                <td><a class="" href="/dr/hospital/view/${hospital.id}" ><span class="glyphicon glyphicon-play-circle" /> </a> </td>
                                <td><a class="" href="/dr/hospital/edit/${hospital.id}" ><span class="glyphicon glyphicon-pencil" /> </a> </td>
                                <%--<td><a class="" href="/dr/hospital/delete/${hospital.id}" ><span class="glyphicon glyphicon-remove-circle" /> </a></td>--%>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
            </div>

        </div>
    </div>



</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
<script src="https://code.jquery.com/jquery-3.3.1.js" ></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script>
    //   $(document).ready(function() {
    $('#users_table').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend:'copyHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2, 3,4 ]
                }
            },
            {
                extend:'excelHtml5',
                exportOptions: {
                    columns: [ 0, 1 ,2,3,4]
                }
            },
            {
                extend:'csvHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2, 3,4 ]
                }
            },
            {
                extend:'pdfHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2,3, 4 ]
                }
            }
        ],

    } );



</script>
<script type="text/javascript" src="/js/main.js"></script>
</body>
</html>
