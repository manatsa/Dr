<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>New Hospital</title>
    <link rel="stylesheet" media="screen" href="../webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" media="screen" href="../css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script type="text/javascript" src="../webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="../webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="../webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>
</head>
<body>
<section class="container">

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="text-uppercase">NEW HOSPITAL DETAILS</h1>
        </div>
        <div class="panel-body">

            <form action="/hospital/created" class="form-horizontal" method="post">
                <hr/>
                <legend class="text-uppercase text-danger text-center">Please fill in the form below <a class="btn btn-warning pull-right pad-5-5" onclick="window.history.back()">&nbsp; &times  &nbsp;</a></legend>



                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="name">Hospital Name</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="${hospital.name}" name="name" id="name" placeholder="Enter Hospital's name" required="true"/>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="address">Address</label>
                                <div class="col-md-8">
                                    <textarea rows="2" class="form-control" value="${hospital.address}" name="address" id="address" placeholder="Enter hospital's address" required="true" ></textarea>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="phone">Phone Number(s)</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" value="${hospital.phone}" name="phone" id="phone" placeholder="Enter hospital's phone Number(s)" required="true" />
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="email">Email Address</label>
                                <div class="col-md-8">
                                    <input type="email" class="form-control" value="${hospital.email}" name="email" id="email" placeholder="Enter hospital's email address" required="false" />
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="contact">Contact Name</label>
                                <div class="col-md-8">
                                    <input  class="form-control" value="${hospital.contact}" name="contact" id="contact" placeholder="Enter hospital's contact person name" required="false" />
                                </div>
                            </fieldset>

                <hr/>

                <div class="row">
                    <div style="padding: 10px 50px; margin: 10px;">
                        <a  role="button" class="btn btn-warning pull-left" href="/">Cancel</a>
                        <button type="submit" role="button" class="btn btn-primary pull-right">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
</body>
</html>