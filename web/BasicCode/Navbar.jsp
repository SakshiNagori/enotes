<%@page import="Model.UserBean"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
    <a class="navbar-brand" href="#"><i class="fa fa-book" aria-hidden="true"></i> E-Notes</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="AddNotes.jsp"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Notes</a>
            </li>

            <li class="nav-item active">
                <a class="nav-link " href="ShowNotes.jsp"><i class="fa fa-bookmark" aria-hidden="true"></i> Show Notes</a>
            </li
            
            <li class="nav-item active">
                <a class="nav-link " href="SearchNotes.jsp"><i class="fa fa-bookmark" aria-hidden="true"></i> Search Notes</a>
            </li>
        </ul>
        <%
            UserBean us = (UserBean) session.getAttribute("userbean");

        %>

        <a class="btn btn-light my-2 my-sm-0 mr-2" href="" data-toggle="modal" data-target="#exampleModal" type="submit"><i class="fa fa-user" aria-hidden="true"></i><%=us.getName()%></a>
        <a class="btn btn-light my-2 my-sm-0" href="LogoutServlet" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Logout</a>


        <!-- Button trigger modal -->

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">User Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <i class="fa fa-user fa-3x"></i>
                            <h5></h5>
                            <%
                                UserBean user = (UserBean) session.getAttribute("userbean");

                            %>
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th>User Id</th>
                                        <td><%=user.getId()%></td>
                                    </tr>
                                    <tr>
                                        <th>Name</th>
                                        <td><%=user.getName()%></td>
                                    </tr>
                                    <tr>
                                        <th>Email</th>
                                        <td><%=user.getEmail()%></td>
                                    </tr>
                                </tbody>

                            </table>

                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>