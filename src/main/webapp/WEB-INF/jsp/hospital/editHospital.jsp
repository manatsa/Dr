<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Hospital</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>

<body>
<jsp:include page="../includes/header.jsp" />
<section class="container padded">



    <div class="panel panel-primary col-md-8 col-md-offset-2">
        <div class="panel-heading">
            <h1 class="panel-title text-uppercase ">Edit Hospital : ${hospital.name}</h1>
        </div>
        <div class="panel-body">

            <form  method="post" action="/dr/hospital/edit.html" >
                <legend class="text-center form-control-static text-danger">Editing Hospital Details  <a class="btn btn-warning pull-right pad-5-5"  onclick="window.history.back()">&nbsp; &times  &nbsp;</a></legend>

                <div class="form-group">
                    <input id="id" name="id" class="hidden" value="${hospital.id}" />
                </div>
                <%--<div class="form-group">--%>
                    <%--<input id="creator" name="creator" class="hidden" value="${user.creator}"/>--%>
                <%--</div>--%>
                <fieldset class="form-group form-row">
                    <label class="control-label col-md-4" for="name">Hospital Name :</label>
                    <input id="name" name="name" value="${hospital.name}" class="form-control col-md-8" required="true" />
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="contact">Contact Person :</label>
                    <input id="contact" name="contact" value="${hospital.contact}" class="form-control col-md-8" required="true"/>
                </fieldset>

                <fieldset class="form-group">
                    <label class="control-label col-md-4" for="address">Address</label>
                    <div class="col-md-8">
                        <textarea rows="2" class="form-control"  name="address" id="address"  required="true" >${hospital.address}</textarea>
                    </div>
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="phone">Phone Number :</label>
                    <input id="phone" name="phone" value="${hospital.phone}" class="form-control col-md-8" required="true"/>
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="email">Email Address :</label>
                    <input type="text" id="email" name="email" value="${hospital.email}" class="form-control col-md-8" required="true"/>
                </fieldset>


                <div class="row">
                    <div style="padding: 10px 50px; margin: 20px;">
                        <a  role="button" class="btn btn-warning pull-left" onclick="window.history.back()">Cancel</a>
                        <button type="submit" role="button" class="btn btn-primary pull-right">Save</button>
                    </div>

                </div>

            </form>
        </div>
    </div>



</section>
</body>
</html>