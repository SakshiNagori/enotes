package Dao;

import Model.AddNotes;
import Model.UserBean;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;

public class UsDao {

    Connection con;

    public boolean register(UserBean us) throws Exception {

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes", "root", "root");
        PreparedStatement ps;

        String sql = "insert into register values(?,?,?,?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, us.getId());
        ps.setString(2, us.getName());
        ps.setString(3, us.getEmail());
        ps.setString(4, us.getPassword());

        int n = ps.executeUpdate();

        if (n > 0) {
            return true;
        }
        return false;
    }

    public UserBean CheckLogin(String user, String pass) throws Exception {
       UserBean bean=null;
        String sql;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root", "root");
        PreparedStatement ps;
        sql = "select * from enotes.register where email=? and password=?";
        ps = con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            bean=new UserBean();
            bean.setId(rs.getString("id"));
            bean.setName(rs.getString("name"));
            bean.setEmail(rs.getString("email"));
            bean.setPassword(rs.getString("password"));
            
        }

        return bean;

    }
    
    public boolean AddNotes(String id,String title,String content)throws Exception
    {
         Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root", "root");
       
     boolean f=false;
     
        try {
            String sql="insert into addnotes values(?,?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, title);
            ps.setString(3, content);
           
            int i=ps.executeUpdate();
            if(i>0)
            {
                f=true;
            }
            
        } catch (Exception e) {
            System.out.println("ERROR dao::----"+e);
        }
     
     return f;
    }
    
    public List<UserBean> ShowNotes(String id) throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root", "root");
        List<UserBean> list=new ArrayList<UserBean>();
        UserBean ub=null;
        try {
            
           String sql="select * from enotes.addnotes where id=?";
           PreparedStatement  ps=con.prepareStatement(sql);
           ps.setString(1, id);
           ResultSet rs= ps.executeQuery();
           while(rs.next())
           {   ub=new UserBean();
               ub.setId(rs.getString(1));
               ub.setTitle(rs.getString(2));
               ub.setContent(rs.getString(3));
               list.add(ub);
           }
            
            
            
        } 
        catch (Exception e) {
            System.out.println("ERROR SHOW::----"+e);
        }
        return list;
    }
    
    public void Delete(String id,String title ) throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root", "root");
        try {
        String sql="delete from addnotes where id=? and title=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, id);
        ps.setString(2, title);
        int n=0;
        n=ps.executeUpdate();
        if(n>0)
       {
           System.out.println("Record deleted........");
       }
        } catch (Exception e) {
            System.out.println("ERROR DELETE::----"+e);
        }
        
    }
    
}
