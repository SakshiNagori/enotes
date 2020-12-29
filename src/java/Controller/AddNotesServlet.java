package Controller;

import Dao.UsDao;
import Model.AddNotes;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddNotesServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddNotesServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNotesServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
        try {
        String id= request.getParameter("uid");     
        String title=request.getParameter("ftitle");
        String content=request.getParameter("fcontent");
        
        
        
        UsDao ud=new UsDao();
        boolean f=ud.AddNotes(id, title, content);
        if(f)
        {
            response.sendRedirect("ShowNotes.jsp");
        }
        else
        {
            out.println("failed");
        }
        
        } catch (Exception e) {
            System.out.println("ERROR Servlet::----"+e);
        }
    }

    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
