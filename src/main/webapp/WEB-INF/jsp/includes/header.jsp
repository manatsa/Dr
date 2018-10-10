<%@ page import="com.mana.dr.entities.User" %>


<nav class="navbar  navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#dr-toggle-nav" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="favicon.ico" width="30px" height="30px" /></a>
                <a class="navbar-brand" href="#">DR DOCTOR</a>
            </div>

            <div class="collapse navbar-collapse" id="toggle-toggle-nav">
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item "><a href="."><span class="glyphicon glyphicon-home"></span></a></li>
                    <li class="nav-item">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-user"></span>Patient<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="navbar-text" ><span class="glyphicon glyphicon-king"></span> Patient</li>
                            <li><a href="/dr/patient/new.html">New Patient</a></li>
                            <li><a href="/dr/patient/">Show All Patients</a></li>

                        </ul>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-book"></span> Accounting <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="navbar-text"><span class="glyphicon glyphicon-paperclip"></span> New Receipt </li>
                            <li><a href="#">New Receipt</a></li>
                            <li><a href="#">View Receipts</a></li>
                            <li><a href="#">Manual Receipt</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-book "></span> Accounting</li>
                            <li><a href="#">Total Day Income</a></li>
                        </ul>
                    </li>



                    <li class="nav-item">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-briefcase"></span> Hosp Admin <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="navbar-text"><span class="glyphicon glyphicon-plus-sign"></span> Hospital</li>
                            <li><a href="/dr/hospital/new.html">New Hospital</a></li>
                            <li><a href="/dr/hospital/">Show All Hospitals</a></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-adjust"></span> Medicine</li>
                            <li><a href="#">New Medicine</a></li>
                            <li><a href="#">Show All Medicine</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-adjust"></span> Equipment</li>
                            <li><a href="#">New Equipment</a></li>
                            <li><a href="#">Show All Equipment</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon glyphicon-cloud-download"></span> Supplier</li>
                            <li><a href="/dr/supplier/new.html">New Supplier</a></li>
                            <li><a href="/dr/supplier/">Show All Suppliers</a></li>

                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-tint"></span> Treatments <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-tint"></span> Treatment</li>
                            <li><a href="#">New Treatment</a></li>
                            <li><a href="#">Show All Treatments</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-info-sign"></span> Tests</li>
                            <li><a href="#">New Test</a></li>
                            <li><a href="#">Show All Tests</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-circle-arrow-right"></span> Referrals</li>
                            <li><a href="#">New Referral</a></li>
                            <li><a href="#">Show All Referrals</a></li>

                        </ul>
                    </li>
                    <%! String acount="Account"; long id=-1; boolean reports=false; String admin=""; %>
                    <%
                        if(request.getSession().getAttributeNames().hasMoreElements())
                        {
                            User user=((User)request.getSession().getAttribute("user"));
                            acount=user.getFirstName()+" "+user.getLastName();
                            id=user.getId();

                        }


                    %>
                    <li class="nav-item"><a href=".">Reports</a> </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-user"></span> <%=acount%><span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">

                            <li><a href="/dr/user/new.html">Create Another User</a></li>
                            <li><a href="/dr/user/">Show All Users</a></li>
                            <li><a href="/dr/user/reset/<%=id%>">Reset Password</a></li>
                            <li><a href="/dr/user/view/<%=id%>">View Own Profile</a></li>


                        </ul>
                    </li>
                </ul>
            </div>

        </div> <!-- close container div -->
    </nav>

