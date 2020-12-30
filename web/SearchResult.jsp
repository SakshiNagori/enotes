<%@page import="java.util.List"%>
<%@page import="Dao.UsDao"%>
<%@page import="Model.AddNotes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Notes</title>
        <%@include file="BasicCode/CssCode.jsp"  %> 
    </head>
    <body>
        <%@include file="BasicCode/Navbar.jsp" %>
        <div class="container">
            
            
            <div class="container-fluid">
                <h1 class="text-center mt-4">All Notes</h1>
            <div class="row">
                <div class="col-md-12">
                    <%         
                                UserBean bean=(UserBean) session.getAttribute("userbean");
                                UsDao ud=new UsDao();
                                
                                 if(bean!=null){
                                 List<UserBean> list= ud.Search(bean.getId(),bean.getTitle());
                                for(UserBean ubean:list)
                                {
                                    %>
                                    
                                    
                                      <div class="card mt-4">
                        <img src="Image/enotes3.png" class="card-img-top mx-auto" style="max-width: 100px">
                        <div  class="card-body p-4">
                            
                            <h5 class="card-title"> <%= ubean.getTitle() %></h5>
                            <p><%= ubean.getContent() %></p>
                            
                            
                        </div>
                    </div>
                                    
                                    
                                  
              <%    
                                }
                                }
                            %>
                  </div>
        </div>
                </div>
            </div>
    </body>
</html>
