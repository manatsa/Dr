<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.mana.dr.entities.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="stylesheet" media="screen" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" media="screen" href="css/main.css">
    <link rel="stylesheet" media="screen" href="css/red_navs.css">

    <script type="text/javascript" src="webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

</head>
<body>

<jsp:include page="includes/header.jsp" />

<div id="logoutModal" class="modal fade" role="dialog">

    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title text-uppercase">Logout Confirmation</h4>
            </div>
            <div class="modal-body">
                <form action="<%=request.getContextPath()%>/logout" method="post" class="form form-sh">
                    <legend class="text-center text-danger">Please Confirm Logout</legend>
                    <div  class="row text-center">
                        <span class="text-danger text-warning text-center">Are you sure you want to log out?</span>
                    </div>
                    <div class="row">
                        <div style="padding: 10px 50px; margin: 20px;">
                            <button type="button" class="btn btn-default" data-dismiss="modal"> No </button>
                            <button type="submit" name="submit" class="btn btn-primary pull-right"> Yes </button>
                        </div>

                    </div>
                </form>
            </div>

        </div>

    </div>
</div>

<section class="container padded">
    <%! String acount="Account"; long id=-1; %>

    <%
        if(request.getSession().getAttributeNames().hasMoreElements())
        {
            User user=((User)request.getSession().getAttribute("user"));
            acount=user.getFirstName()+" "+user.getLastName();
            id=user.getId();

        }


    %>

    <c:if test="${param.login eq 'true'}">
        <div  data-role="alert" class="alert alert-dismissable alert-success text-center text-success">
            <c:out value="You have successfully logged in!" />
            <a href="#" class="close pad-5-5" data-dismiss="alert" aria-label="close">&times;</a>
        </div>
    </c:if>


    <div class="row">
        <div class="pull-left pad-10-60 text-primary  text-nowrap text-center">
            Dr Doctor : The patient management system.
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="/dr/login" > Login <span class="glyphicon glyphicon-log-in"></span></a>
            <a class="btn btn-warning"  data-toggle="modal" data-target="#logoutModal"> Logout <span class="glyphicon glyphicon-log-out"></span> </a>
        </div>
    </div>


    <!-- The carousel-->

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3" ></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
            <li data-target="#myCarousel" data-slide-to="5"></li>
            <li data-target="#myCarousel" data-slide-to="6"></li>
            <li data-target="#myCarousel" data-slide-to="7"></li>

        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <div class="item">
                <img src="images/doc2.jpg" alt="doc 2" class="img-responsive img-circle" >
                <div class="carousel-caption">
                    <h3 class="text-danger col-md-7 text-center pull-right">The Hospital Administration Module</h3>
                    <p class="text-danger col-md-7 text-center pull-right">
                        The Hospital Admin Module includes Medicine(drugs or herbs) management. Capture into the system, viewing,
                        as well as editing. There is also supplier management and equipment management. The actual hospitals are listed
                        also in this module to help with referrals as well as tests.
                    </p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc3.jpg" alt="doc 3" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3 class="text-danger col-md-7 text-center pull-right">Patient Management Module</h3>
                    <p class="text-danger col-md-7 text-center pull-right">
                        The Patient Admin Module delas with both the patient and the next of kin for the patient. Capture into the system, viewing,
                        as well as editing. Important patient information is captured into the system for future reference as well as classification of patients.
                    </p>
                </div>
            </div>

            <div class="item active">
                <img src="images/doc4.png" alt="doc 4" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3 class="text-danger col-md-7 text-center pull-right">Accounting and Receipting Module </h3>
                    <p class="text-danger col-md-7 text-center pull-right">
                       This is the module that has to do with the finances. Electronic receipts are captured into the system as well as
                        manual receipts. These captured receipts are very accessible but can only be edited by special rights.
                    </p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc5.png" alt="doc 5" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3 class="text-danger col-md-7 text-center pull-right">The System Administration Module</h3>
                    <p class="text-danger col-md-7 text-center pull-right">
                        Users of the system need constant assistance in cases like when they need to be upgraded or degraded to new ROLES.
                        The administration module also give system administrator ways to reset password in case the need arises.
                    </p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc6.jpg" alt="doc 6" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3 class="text-danger col-md-7 text-center pull-right">The Treatment Module</h3>
                    <p class="text-danger col-md-7 text-center pull-right">
                        One of the most important modules that keeps track of all treatments on every patient in the system. It takes note
                        of the prescriptions made to the patient, any tests done and the details surrounding the tests, any referrals done and the
                        details of the referrals.
                    </p>
                </div>
            </div>

            <div class="item active">
                <img src="images/doc7.png" alt="doc 7" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3 class="text-danger col-md-7 text-center pull-right">The Reporting Module</h3>
                    <p class="text-danger col-md-7 text-center pull-right">
                        This module cross-cuts through all othe modules and produces reports based on selected criteria, which may include,
                        gender, age, dates, types of objects, events, actions or people. While crude reports are spread across all other modules,
                        this is a hub for consolidated reports created using a specialised reports engine.
                    </p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc8.png" alt="doc 8" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3 class="text-danger col-md-7 text-center pull-right">About </h3>
                    <p class="text-danger col-md-7 text-center pull-right">
                       Dr DOCTOR version 1.0.1.beta was developed by Manatsa Chinyeruse<br/>
                        <a href="mailto:manatsachinyeruse@gmail.com">Email : Manatsa Chinyeruse</a>. <br/>
                        Mobile Number: 0776298063 or 0733680483.<br/><br/>
                       Address : 7571 Lemon drive, Zimre Park, Ruwa

                    </p>
                </div>
            </div>



        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</section>
<jsp:include page="includes/footer.jsp" />
</body>
</html>