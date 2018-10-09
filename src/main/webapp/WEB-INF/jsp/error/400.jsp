<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title class="text-danger">400</title>
    <link rel="stylesheet" media="screen" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" media="screen" href="css/main.css">
    <link rel="shortcut icon" href="../../favicon.ico">

    <script type="text/javascript" src="webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<section class="container">
    <header class="page-header pad-10-60">

        <h3 class="text-danger text-uppercase text-center">${status} - Message is : ${message}</h3>

    </header>


    <div class="row pad-5-5">
        <img src="images/404.gif" alt="The resource you are looking for was not found!"  class="img-responsive img-rounded col-md-5" />
        <button data-toggle="collapse" class="btn btn-danger col-md-4" data-target="#error">Click This Error To see More <span class="caret" /></button>
    </div>

    <div class="row">

        <div id="error" class="collapse bg-warning pad-10-60">
            <div class="panel panel-danger panel-collapse ">
                <div class="panel-heading">
                    <h1 class="panel-title text-uppercase ">${error}</h1>
                </div>
                <div class="panel-body">
                    <span class="text-center text-justify">Exception : ${exception}</span><br/><br/>
                    <span class="text-center text-justify">Trace : ${trace}</span>
                </div>
            </div>
        </div>

    </div>



    <div class="panel-footer">
        <div class="row pad-10-60">
            <a class="btn btn-warning pull-right" onclick="window.history.back()">Take me Back</a>
        </div>
    </div>


</section>
</body>
</html>