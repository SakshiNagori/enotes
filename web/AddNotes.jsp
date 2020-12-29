
<%@page import="Model.AddNotes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notes</title>
        <%@include file="BasicCode/CssCode.jsp"  %> 
    </head>
    <body>
        <%@include file="BasicCode/Navbar.jsp" %>
        
        <div class="container">
            
            
            <div class="container-fluid">
                <h1 class="text-center">Add Your Notes Here</h1>
            <div class="row">
                <div class="col-md-12">
                    <form action="AddNotesServlet" method="post">
                        <div class="form-group">
                            <% 
                            UserBean bean=(UserBean) session.getAttribute("userbean");
                             %>
                             
                            <input type="hidden" value="<%= bean.getId()%>" name="uid">
                           
                            
                            
                            <label>Enter Your Title</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="ftitle" required="required" >

                        </div>
                        <div class="form-group">
                            <label>Enter Content</label>
                            <textarea rows="10" cols="" class="form-control" name="fcontent" required="required"></textarea>                 
                        </div>


                        <div class="container text-center">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>

                </div>

            </div>

        </div>
            
        </div>
    </body>
</html>
