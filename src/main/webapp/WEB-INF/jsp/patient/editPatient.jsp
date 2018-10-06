<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>Edit User</title>
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



    <div class="panel panel-primary col-md-8 col-md-offset-2">
        <div class="panel-heading">
            <h1 class="panel-title text-uppercase ">Edit Patient : ${patient.firstName} ${patient.lastName}</h1>
        </div>
        <div class="panel-body">

            <form  method="post" action="/patient/edit.html" >
                <legend class="text-center form-control-static text-danger">Editing Patient Details  <a class="btn btn-warning pull-right pad-5-5" href="/patient/">&nbsp; &times  &nbsp;</a></legend>
                <%--<div class="form-group">--%>
                    <%--<input type="date" id="createDate" name="createDate" value="${user.createDate}" class="hidden" />--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input type="date" id="modifyDate" name="createDate" value="${user.modifyDate}" class="hidden" />--%>
                <%--</div>--%>

                <div class="form-group">
                    <input id="id" name="id" class="hidden" value="${patient.id}" />
                </div>
                <div class="form-group">
                    <input  name="kid" class="hidden" value="${patient.kinsman.id}" />
                </div>
                <%--<div class="form-group">--%>
                    <%--<input id="creator" name="creator" class="hidden" value="${user.creator}"/>--%>
                <%--</div>--%>
                <fieldset class="form-group form-row">
                    <label class="control-label col-md-4" for="firstName">First Name :</label>
                    <input id="firstName" name="firstName" value="${patient.firstName}" class="form-control col-md-8" required="true" />
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="lastName">Last Name :</label>
                    <input id="lastName" name="lastName" value="${patient.lastName}" class="form-control col-md-8" required="true"/>
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="idNumber">ID Number :</label>
                    <input type="text" id="idNumber" name="idNumber" value="${patient.idNumber}" class="form-control col-md-8" required="true"/>
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4" for="address">Address</label>
                    <div class="col-md-8">
                        <textarea rows="2" class="form-control"  name="address" id="address"  required="true" >${patient.address}</textarea>
                    </div>
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="phone">Mobile Number :</label>
                    <input id="phone" name="phone" value="${patient.phone}" class="form-control col-md-8" required="true"/>
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="email">Email Address :</label>
                    <input type="text" id="email" name="email" value="${patient.email}" class="form-control col-md-8" required="true"/>
                </fieldset>


                <div class="row">
                    <div style="padding: 10px 50px; margin: 20px;">
                        <a  role="button" class="btn btn-warning pull-left" href="/patient/">Cancel</a>
                        <button type="submit" role="button" class="btn btn-primary pull-right">Save</button>
                    </div>

                </div>

            </form>
        </div>
    </div>



</section>
</body>
</html>