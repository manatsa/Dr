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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.quicksearch/2.3.1/jquery.quicksearch.js"></script>
</head>
<body>
<section class="container">
    <div class="panel panel-warning col-md-6 col-md-offset-3">
        <div class="panel-heading">
            <h1 class="panel-title">PASSWORD RESET WIZARD</h1>
        </div>
        <div class="panel-body">
            <form action="" method="post">
                <legend class="text-uppercase text-center">New Password For   USER ${user.firstName} ${user.lastName}</legend>
                <fieldset class="form-group">
                    <label class="control-label col-md-2" for="password">New Password</label>
                    <input type="password" class="form-control" name="password" id="password" />
                </fieldset>

                <div style="padding: 10px 50px; margin: 20px;">
                    <a  role="button" class="btn btn-warning pull-left" onclick="window.history.back()">Cancel</a>
                    <button type="submit" role="button" class="btn btn-primary pull-right">Save</button>
                </div>
            </form>

        </div>
    </div>
</section>
</body>
</html>