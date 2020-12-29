

<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            .back-img
            {
                background: url("Image/enotes1.png");
                height: 40vh;
                width: 100%;
                background-repeat: no-repeat;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%@include file="BasicCode/CssCode.jsp"  %> 
    </head>
    <body>
        
        

        <div class="container-fluid back-img">
            <div class="text-center" >
                <div class="mt-5">
                    <h1><i class="fa fa-book" aria-hidden="true"></i> E Notes Save Your Notes</h1>
                    <a href="Login.jsp" class="btn btn-dark"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
                    <a href="Register.jsp" class="btn btn-dark"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
                </div>


            </div>

        </div>
    </body>
</html>
