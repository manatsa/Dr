<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>New Patient</title>
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
            <h1 class="text-uppercase">NEW PATIENT</h1>
        </div>
        <div class="panel-body">

            <form action="/patient/created" class="form-horizontal" method="post">
                <legend class="text-uppercase text-danger text-center">Please fill in the form below <a class="btn btn-warning pull-right pad-5-5" onclick="window.history.back()">&nbsp; &times  &nbsp;</a></legend>

                <div class="row">
                    <div class="panel panel-primary col-md-6">
                        <div class="panel-heading">
                            <h4 class="text-uppercase">NEW PATIENT DETAILS</h4>
                        </div>
                        <div class="panel-body">

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="firstName">First Name</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="${patient.firstName}" name="firstName" id="firstName" placeholder="Enter Patient's first name" required="true"/>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="lastName">Last Name</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="${patient.lastName}" name="lastName" id="lastName" placeholder="Enter Patient's last name" required="true"/>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="idNumber">ID Number</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="${patient.idNumber}" name="idNumber" id="idNumber" placeholder="Enter Patient's last name" required="true"/>
                                </div>
                            </fieldset>


                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="address">Address</label>
                                <div class="col-md-8">
                                    <textarea rows="2" class="form-control" value="${patient.address}" name="address" id="address" placeholder="Enter Patient's address" required="true" ></textarea>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="phone">Mobile Phone#</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" value="${patient.phone}" name="phone" id="phone" placeholder="Enter Patient's mobile Number" required="true" />
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="email">Email Address</label>
                                <div class="col-md-8">
                                    <input type="email" class="form-control" value="${patient.email}" name="email" id="email" placeholder="Enter Patient's email address" required="false" />
                                </div>
                            </fieldset>

                            <%--<fieldset class="form-group">--%>
                                <%--<label class="control-label col-md-4" for="details">Any Details</label>--%>
                                <%--<div class="col-md-8">--%>
                                    <%--<textarea rows="2" class="form-control" name="details" id="details" placeholder="Enter any other details of patient" required="true" ></textarea>--%>
                                <%--</div>--%>
                            <%--</fieldset>--%>
                        </div>
                    </div>

                    <div class="panel panel-primary col-md-6">
                        <div class="panel-heading">
                            <h4 class="text-uppercase">NEXT OF KIN DETAILS</h4>
                        </div>
                        <div class="panel-body">
                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="kfirstName">First Name</label>
                                <div class="col-md-8">
                                    <input class="form-control" name="kfirstName" value="${kinsman.firstName}" id="kfirstName" placeholder="Enter Next of kin's first name" required="true"/>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="klastName">Last Name</label>
                                <div class="col-md-8">
                                    <input class="form-control " name="klastName" value="${kinsman.lastName}" id="klastName" placeholder="Enter Next of kin's last name" required="true"/>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="kidNumber">ID Number</label>
                                <div class="col-md-8">
                                    <input class="form-control" name="kidNumber" value="${kinsman.idNumber}" id="kidNumber" placeholder="Enter Next of kin's last name" required="true"/>
                                </div>
                            </fieldset>


                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="kaddress">Address</label>
                                <div class="col-md-8">
                                    <textarea rows="2" class="form-control" name="kaddress" value="${kinsman.address}" id="kaddress" placeholder="Enter Next of kin's address" required="true" ></textarea>
                                </div>

                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="kphone">Mobile Phone#</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" name="kphone" value="${kinsman.phone}" id="kphone" placeholder="Enter Next of kin's mobile Number" required="true" />
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="kemail">Email Address</label>
                                <div class="col-md-8">
                                    <input type="email" class="form-control" name="kemail" value="${kinsman.email}" id="kemail" placeholder="Enter Next of kin's email address" required="false" />
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>

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