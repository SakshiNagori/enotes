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
        <title>Register Page</title>
        <%@include file="BasicCode/CssCode.jsp"  %>  
    </head>
    <body>
       

        <div class="container-fluid back-img">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5" >
                        <div class="card-header bg-custom   ">
                            <h4 class="text-center"><i class="fa fa-user-plus fa-3x " aria-hidden="true"></i> Registration</h4>
                        </div>

                        
                        <div class="card-body">
                            <form method="post" action="User" >
                                <div class="form-group">
                                    <label>ID</label>
                                    <input type="text" class="form-control" id="exampleInputName" placeholder="ID" name="fid">
                                </div> 
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" id="exampleInputName" placeholder="Name" name="fname">
                                </div>                                    
                                <div class="form-group">
                                    <label>Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="femail">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="fpass">
                                </div>

                                <button type="submit" class="btn btn-primary">Register</button>
                            </form>
                        </div>



                    </div>  
                </div>    

            </div>

        </div>


    </body>
</html>
