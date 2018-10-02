<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>New User</title>
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" media="screen" href="/css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script type="text/javascript" src="/webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>
</head>
<body>
<section class="container">
    <h1>Error Details Below</h1>
    <div class="row">
        <div class="col-md-4">
            <img src="../images/tenor.gif" alt="error.gif" width="300px" height="200px" class="img-responsive img-rounded">
        </div>
        <div class="col-md-4">
            <img src="../images/tenor.gif" alt="error.gif" width="300px" height="200px" class="img-responsive img-rounded">
        </div>
        <div class="col-md-4">
            <img src="../images/tenor.gif" alt="error.gif" width="300px" height="200px" class="img-responsive img-rounded">
        </div>

    </div>

    <button data-toggle="collapse" data-target="#demo">${error}</button>

    <div id="demo" class="collapse bg-warning">
        <div class="panel panel-danger panel-collapse ">
            <div class="panel-heading">
                <h1 class="panel-title text-uppercase ">${error}</h1>
            </div>
            <div class="panel-body">
                <span class="text-center text-justify">${exception}</span>
            </div>
        </div>
    </div>








</section>
</body>
</html>