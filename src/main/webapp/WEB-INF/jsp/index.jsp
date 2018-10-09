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
    <link rel="shortcut icon" href="../resources/favicon.ico">
    <link rel="stylesheet" media="screen" href="css/main.css">
    <link rel="stylesheet" media="screen" href="css/red_navs.css">

    <script type="text/javascript" src="webjars/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/popper.js/1.14.4/popper.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

</head>
<body>
<div id="spinner" class="spinner" style="display:none;">
    <img id="img-spinner" src="/images/loader.gif" alt="Loading" class="img-responsive"/>
</div>
<jsp:include page="includes/header.jsp" />
<
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
                    <h3>Chicago</h3>
                    <p>Thank you, Chicago!</p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc3.jpg" alt="doc 3" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div>
            </div>

            <div class="item active">
                <img src="images/doc4.png" alt="doc 4" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3>Los Angeles</h3>
                    <p>LA is always so much fun!</p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc5.png" alt="doc 5" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3>Chicago</h3>
                    <p>Thank you, Chicago!</p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc6.jpg" alt="doc 6" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div>
            </div>

            <div class="item active">
                <img src="images/doc7.png" alt="doc 7" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3>Los Angeles</h3>
                    <p>LA is always so much fun!</p>
                </div>
            </div>

            <div class="item">
                <img src="images/doc8.png" alt="doc 8" class="img-responsive img-circle">
                <div class="carousel-caption">
                    <h3>Chicago</h3>
                    <p>Thank you, Chicago!</p>
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