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
        <title>Login Page</title>
       <%@include file="BasicCode/CssCode.jsp"  %>  
    </head>
    <body>
          
       
          <div class="container-fluid back-img">
              <div class="row">
                  <div class="col-md-4 offset-md-4">
                      <div class="card mt-5" >
                          <div class="card-header bg-custom   ">
                          <h4 class="text-center"><i class="fa fa-user fa-3x" aria-hidden="true"></i> Login Page</h4>
                          </div>
                              
                              
                              <div class="card-body">
                                  <form action="LoginSer"   method="post" >
                                    
  <div class="form-group">
    <label for="exampleInputEmail1"> Enter Email </label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="femail" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="fpass" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Login</button>
</form>
                              </div>
                              
                         
                          
                      </div>  
                  </div>    
                  
              </div>
              
          </div>
          
          
    </body>
</html>
