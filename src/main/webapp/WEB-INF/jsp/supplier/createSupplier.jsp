<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>New Supplier</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="../css/main.css">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>

</head>
<body>
<section class="container">



            <form action="/dr/supplier/created" class="form-horizontal" method="post">
                <legend class="text-uppercase text-danger text-center">Please fill in the form below <a class="btn btn-warning pull-right pad-5-5" onclick="window.history.back()">&nbsp; &times  &nbsp;</a></legend>

                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="text-uppercase">NEW SUPPLIER DETAILS</h4>
                        </div>
                        <div class="panel-body">

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="name">Supplier Name</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="${supplier.name}" name="name" id="name" placeholder="Enter Supplier's name" required="true"/>
                                </div>
                            </fieldset>



                            <fieldset class="form-group">
                                <label class="control-label col-md-4 pull-left" for="type">Type :</label>
                                <div class="col-lg-8">
                                    <select class="form-control" name="type" value="${supplier.type}" id="type" required="true">
                                        <option class="text-uppercase">Individual</option>
                                        <option class="text-uppercase">company</option>
                                        <option class="text-uppercase">Unspecified</option>
                                    </select>
                                </div>

                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="address">Address</label>
                                <div class="col-md-8">
                                    <textarea rows="2" class="form-control" value="${supplier.address}" name="address" id="address" placeholder="Enter Supplier's address" required="true" ></textarea>
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="phone">Mobile Phone#</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" value="${supplier.phone}" name="phone" id="phone" placeholder="Enter Supplier's phone Number" required="true" />
                                </div>
                            </fieldset>

                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="email">Email Address</label>
                                <div class="col-md-8">
                                    <input type="email" class="form-control" value="${supplier.email}" name="email" id="email" placeholder="Enter Supplier's email address" required="false" />
                                </div>
                            </fieldset>
                            <fieldset class="form-group">
                                <label class="control-label col-md-4" for="contact">Contact :</label>
                                <div class="col-md-8">
                                    <input type="contact" class="form-control" value="${supplier.contact}" name="contact" id="contact" placeholder="Enter Supplier's email address" required="false" />
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

</section>
</body>
</html>