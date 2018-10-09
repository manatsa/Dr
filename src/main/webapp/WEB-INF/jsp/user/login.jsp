<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
</head>
<body>
<section class="container">


    <div class="panel panel-primary col-md-6 col-md-offset-2">
        <div class="panel-heading">
            <h1 class="text-center text-uppercase">Please Login <span class="glyphicon glyphicon-lock"></span></h1>
        </div>
        <div class="panel-body">

            <c:if test="${param.error eq 'true'}">
                <div  data-role="alert" class="alert alert-dismissable alert-danger text-center text-danger">
                    <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
                    <a href="#" class="close pad-5-5" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
            </c:if>
            <c:if test="${param.logout eq 'true'}">
                <div  data-role="alert" class="alert alert-dismissable alert-danger text-center text-danger">
                    <c:out value="Please not that you have successfully logged out and need to login!" />
                    <a href="#" class="close pad-5-5" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
            </c:if>
            <form name='f' action="<%=request.getContextPath()%>/login" method="post">
                <legend>Enter Your Login Details <span class="glyphicon glyphicon-lock"></span></legend>

                <fieldset class="form-group md-form">
                    <label class="control-label hidden" for="username">Username</label>
                    <input type="text" class="form-control col-md-9" title="Your username" placeholder="Your Username here" name="username" id="username" required="true" />
                </fieldset>
                <fieldset class="form-group md-form">
                    <label class="control-label hidden" for="password">Password</label>
                    <input type="password" class="form-control col-md-9" title="Your password" placeholder="Your password here" name="password" id="password"  required="true"/>
                </fieldset>
                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
                <div class="row">
                    <div style="padding: 10px 50px; margin: 20px;">
                        <a  role="button" class="btn btn-warning pull-left btn-rounded waves-effect" href="/">Cancel</a>
                        <button type="submit" name="submit" role="button" class="btn btn-primary pull-right">Save</button>
                    </div>

                </div>
            </form>
        </div>
    </div>


</section>
</body>
</html>