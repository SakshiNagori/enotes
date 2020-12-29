package Controller;

import Dao.UsDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.UsDao;
import Model.UserBean;
import javax.servlet.http.HttpSession;

public class User extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        PrintWriter out=response.getWriter();
        try 
        {
            String id,name,email,password;
          
            id=request.getParameter("fid");
            name=request.getParameter("fname");
            email=request.getParameter("femail");
            password=request.getParameter("fpass");
            UserBean us=new UserBean();
            us.setId(id);
            us.setName(name);
            us.setEmail(email);
            us.setPassword(password);
            UsDao ud= new UsDao();
             HttpSession session;
            if(ud.register(us))
            {
               response.sendRedirect("Login.jsp");
            }
            else
            {
                out.println("not added..!!");}
        } 
        catch (Exception e) 
        {
            out.println(e);
        }
    }

    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
