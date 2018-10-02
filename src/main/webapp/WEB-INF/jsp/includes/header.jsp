<%@ page import="com.mana.dr.entities.User" %>
<nav class="navbar  navbar-inverse navbar-primary ">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#dr-toggle-nav" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="../../favicon.ico" width="30px" height="30px" /></a>
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
                            <li class="nav-item-heading bg-success navbar-text" ><span class="glyphicon glyphicon-king"></span> Patient</li>
                            <li><a href="#">New Patient</a></li>
                            <li><a href="#">View Patients</a></li>
                            <li><a href="#">Edit Patient</a></li>
                            <li><a href="#">Delete Patient</a></li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-book"></span> Accounting <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="navbar-text"><span class="glyphicon glyphicon-paperclip"></span> New Receipt </li>
                            <li><a href="#">New Receipt</a></li>
                            <li><a href="#">View Receipts</a></li>
                            <li><a href="#">Edit Receipt</a></li>
                            <li><a href="#">Delete Receipt</a></li>
                            <li><a href="#">Manual Receipt</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-book "></span> Accounting</li>
                            <li><a href="#">Total Day Income</a></li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-adjust"></span><span class="glyphicon glyphicon-leaf"></span>Medicine<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="navbar-text"><span class="glyphicon glyphicon-adjust"></span> Drugs</li>
                            <li><a href="#">New Drug</a></li>
                            <li><a href="#">View Drugs</a></li>
                            <li><a href="#">Edit Drug</a></li>
                            <li><a href="#">Delete Drug</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-leaf"></span> Herbs</li>
                            <li><a href="#">New Herb</a></li>
                            <li><a href="#">View Herbs</a></li>
                            <li><a href="#">Edit Herb</a></li>
                            <li><a href="#">Delete Herb</a></li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-plus-sign"></span> Hospital <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">New Hospital</a></li>
                            <li><a href="#">View Hospitals</a></li>
                            <li><a href="#">Edit Hospital</a></li>
                            <li><a href="#">Delete Hospital</a></li>
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
                            <li><a href="#">View Treatments</a></li>
                            <li><a href="#">Edit Treatment</a></li>
                            <li><a href="#">Delete Treatment</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-info-sign"></span> Tests</li>
                            <li><a href="#">New Test</a></li>
                            <li><a href="#">View Tests</a></li>
                            <li><a href="#">Edit Test</a></li>
                            <li><a href="#">Delete Test</a></li>
                            <li class="nav-divider"></li>
                            <li class="navbar-text"><span class="glyphicon glyphicon-circle-arrow-right"></span> Referrals</li>
                            <li><a href="#">New Referral</a></li>
                            <li><a href="#">View Referrals</a></li>
                            <li><a href="#">Edit Referral</a></li>
                            <li><a href="#">Delete Referral</a></li>
                        </ul>
                    </li>
    <%! String acount="Account"; %>
                    <%
        if(request.getSession().getAttributeNames().hasMoreElements())
        {
            User user=((User)request.getSession().getAttribute("user"));
            acount=user.getFirstName()+" "+user.getLastName();
        }


    %>
                    <li class="nav-item"><a href=".">Reports</a> </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-user"></span> <%=acount%><span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/user/new.html">New User</a></li>
                            <li><a href="/user/">View Users</a></li>
                            <li><a href="#">Edit user</a></li>
                            <li><a href="#">Disable user</a></li>
                            <li><a href="#">Delete user</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div> <!-- close container div -->
    </nav>

