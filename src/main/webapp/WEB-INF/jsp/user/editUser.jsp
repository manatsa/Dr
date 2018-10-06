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
            <h1 class="panel-title text-uppercase ">Edit User : ${user.firstName} ${user.lastName}</h1>
        </div>
        <div class="panel-body">

            <form  method="post" action="/user/edit.html" >
                <legend class="text-center form-control-static">Enter New User Details</legend>
                <%--<div class="form-group">--%>
                    <%--<input type="date" id="createDate" name="createDate" value="${user.createDate}" class="hidden" />--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input type="date" id="modifyDate" name="createDate" value="${user.modifyDate}" class="hidden" />--%>
                <%--</div>--%>
                <div class="form-group">

                    <input type="password" id="password" name="password" class="hidden" value="${user.password}"/>
                </div>
                <div class="form-group">
                    <input id="id" name="id" class="hidden" value="${user.id}" />
                </div>
                <div class="form-group">
                    <input id="creator" name="creator" class="hidden" value="${user.creator}"/>
                </div>
                <fieldset class="form-group form-row">
                    <label class="control-label col-md-4" for="firstName">First Name :</label>
                    <input id="firstName" name="firstName" value="${user.firstName}" class="form-control col-md-8" required="true" />
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="lastName">Last Name :</label>
                    <input id="lastName" name="lastName" value="${user.lastName}" class="form-control col-md-8" required="true"/>
                </fieldset>
                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="userName">Username :</label>
                    <input type="text" id="userName" name="userName" value="${user.userName}" class="form-control col-md-8" required="true"/>
                </fieldset>

                <fieldset class="form-group">
                    <label class="control-label col-md-4 pull-left" for="role">User Role :</label>
                    <select class="form-control col-lg-8" name="userRole" id="role"  required="true">
                        <c:forEach items="${roles}" var="role" >
                            <option class="text-uppercase" >${role.role}</option>
                        </c:forEach>

                    </select>
                </fieldset>
                <div class="row">
                    <div style="padding: 10px 50px; margin: 20px;">
                        <a  role="button" class="btn btn-warning pull-left" href="/user/">Cancel</a>
                        <button type="submit" role="button" class="btn btn-primary pull-right">Save</button>
                    </div>

                </div>

            </form>
        </div>
    </div>



</section>
</body>
</html>