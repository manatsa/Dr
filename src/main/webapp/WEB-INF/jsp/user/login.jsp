<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>Login Page</title>
    <link rel="stylesheet" media="screen" href="../webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.7/css/mdb.min.css" />
    <link rel="stylesheet" media="screen" href="../css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script type="text/javascript" src="../webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="../webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="../webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.7/js/mdb.min.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>
</head>
<body>
<section class="container">

    <div class="panel panel-primary col-md-6 col-md-offset-2">
        <div class="panel-heading">
            <h1 class="text-center text-uppercase">Please Login <span class="glyphicon glyphicon-lock"></span></h1>
        </div>
        <div class="panel-body">
            <form name='f' action="/login" method="post">
                <legend>Enter Your Login Details <span class="glyphicon glyphicon-lock"></span></legend>
                <%--<div class="row">--%>
                    <%--<span class="text-danger  with-blink">${errormessage}</span>--%>
                <%--</div>--%>
                <fieldset class="form-group md-form">
                    <label class="control-label hidden" for="usertext">Username</label>
                    <input type="text" class="form-control col-md-9" title="Your username" placeholder="Your Username here" name="username" id="usertext" required="true" />
                </fieldset>
                <fieldset class="form-group md-form">
                    <label class="control-label hidden" for="passtext">Password</label>
                    <input type="password" class="form-control col-md-9" title="Your password" placeholder="Your password here" name="password" id="passtext"  required="true"/>
                </fieldset>
                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
                <div class="row">
                    <div style="padding: 10px 50px; margin: 20px;">
                        <a  role="button" class="btn btn-warning pull-left" href="/">Cancel</a>
                        <button type="submit" name="submit" role="button" class="btn btn-primary pull-right">Save</button>
                    </div>

                </div>
            </form>
        </div>
    </div>


</section>
</body>
</html>