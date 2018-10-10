<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>New User</title>
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



        <div class="panel panel-primary col-md-8 col-md-offset-2">
            <div class="panel-heading">
                <h1 class="panel-title text-uppercase ">New User Creation</h1>
            </div>
            <div class="panel-body">

                <form class="form-horizontal"  method="post" action="/dr/user/create.html" >
                    <legend class="text-center form-control-static">Enter New User Details</legend>

                    <div class="form-group">
                        <input id="id" name="id" class="hidden" />
                    </div>
                    <div class="form-group">
                        <input id="creator" name="creator" class="hidden" />
                    </div>
                    <fieldset class="form-group form-row">
                        <label class="control-label col-md-4" for="firstName">First Name :</label>
                        <div class="col-md-8">
                            <input id="firstName" name="firstName" class="form-control" required="true" />
                        </div>
                    </fieldset>
                    <fieldset class="form-group">
                        <label class="control-label col-md-4 pull-left" for="lastName">Last Name :</label>
                        <div class="col-md-8">
                            <input id="lastName" name="lastName" class="form-control" required="true"/>
                        </div>
                    </fieldset>
                    <fieldset class="form-group">
                        <label class="control-label col-md-4 pull-left" for="userName">Username :</label>
                        <div class="col-md-8">
                            <input type="text" id="userName" name="userName" class="form-control" required="true"/>
                        </div>
                    </fieldset>
                    <fieldset class="form-group">
                        <label class="control-label col-md-4 pull-left" for="password">Password :</label>
                        <div class="col-md-8">
                            <input type="password" id="password" name="password" class="form-control" required="true"/>
                        </div>
                    </fieldset>
                    <fieldset class="form-group">
                        <label class="control-label col-md-4 pull-left" for="role">User Role :</label>
                        <div class="col-md-8">
                            <select class="form-control" name="role" id="role" required="true">
                                <c:forEach items="${roles}" var="role">
                                    <option class="text-uppercase">${role.role}</option>
                                </c:forEach>
                            </select>
                        </div>

                    </fieldset>
                    <hr/>
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