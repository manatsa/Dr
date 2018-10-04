<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devicewidth, initial-scale=1">
    <title>Logine</title>
    <link rel="stylesheet" media="screen" href="/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/webjars/jquery/3.0.0/jquery.min.js"></script>
    <script type="text/javascript" src="/js/boostrap.min.js"></script>
</head>
<body>
<section class="container">
    <f:view>
        <h:outputLabel value="Hello JSF" styleClass="text-danger"></h:outputLabel>
    </f:view>
</section>
</body>
</html>