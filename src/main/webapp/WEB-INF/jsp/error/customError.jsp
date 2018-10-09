<%@ page import="java.io.StringWriter" %>
<%@ page import="java.io.PrintWriter" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>New User</title>
    <link rel="stylesheet" media="screen" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" media="screen" href="css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script type="text/javascript" src="webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<section class="container">
    <%!
        int err=0;
        Throwable throwable= new Throwable("No Stacktrace for the exception");
        String error="";
    %>
    <% err =(Integer)request.getAttribute("javax.servlet.error.status_code");
        throwable=(Throwable)request.getAttribute("javax.servlet.error.exception");
        if(throwable!=null) {
            StringWriter errors = new StringWriter();
            throwable.printStackTrace(new PrintWriter(errors));
            error = errors.toString();
        }
    %>
    <h1>Error Details Below  ${status}</h1>
    <div class="row pad-10-60">
        <div class="col-md-4 ">
            <img src="images/tenor.gif" alt="error.gif" width="300px" height="200px" class="img-responsive img-rounded">
        </div>
        <div class="col-md-4">
            <img src="images/tenor.gif" alt="error.gif" width="300px" height="200px" class="img-responsive img-rounded">
        </div>
        <div class="col-md-4">
            <img src="images/tenor.gif" alt="error.gif" width="300px" height="200px" class="img-responsive img-rounded">
        </div>

    </div>

    <div class="row">
        <button data-toggle="collapse" class="btn btn-danger col-md-offset-3" data-target="#error">Click This Error To see More <span class="caret" /></button>

        <div id="error" class="collapse bg-warning pad-10-60">
            <div class="panel panel-danger panel-collapse ">
                <div class="panel-heading">
                    <h1 class="panel-title text-uppercase ">${error}</h1>
                </div>
                <div class="panel-body">
                    <span class="text-center text-justify">${exception}</span>
                </div>
            </div>
        </div>
    </div>









</section>
</body>
</html>