package Reg_Login;
import DB.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Login_Conf", urlPatterns = {"/Login_Conf"})
public class Login_Conf extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
         String role=request.getParameter("role");
         String user=request.getParameter("user");
         String pass=request.getParameter("pass");
         
         
         
         
         Cookie c1=new Cookie("user",user);//creation of cookie
         Cookie c2=new Cookie("pass",pass);//creation of cookie
         Cookie c3 =new Cookie("check",request.getParameter("check"));
         
            c1.setMaxAge(60*60*24);         // time in seconds ==== 1 day time
            c2.setMaxAge(60*60*24);         // time in seconds ==== 1 day time
            c3.setMaxAge(60*60*24);         // time in seconds ==== 1 day time
            response.addCookie(c1);         //adding cookie
            response.addCookie(c2);
            response.addCookie(c3);
            
            
            
            
         DBConnect db=new DBConnect();
         db.pstmt=db.con.prepareStatement("select * from login where pass=? and (email=? or username=?)");
         db.pstmt.setString(1,pass);
         db.pstmt.setString(2,user);
         db.pstmt.setString(3,user);
         
         db.rst=db.pstmt.executeQuery();
         if(db.rst.next())
         {
            db.pstmt=db.con.prepareStatement("select * from register where role=? and (email=? or username=?)");
            db.pstmt.setString(1,role); 
            db.pstmt.setString(2,user); 
            db.pstmt.setString(3,user);
            
            
            db.rst=db.pstmt.executeQuery();
            
              if(db.rst.next())
              {
                  if(role.equals("Admin"))
                  {
                    response.sendRedirect("Admin.jsp");  
                  }
                  else if(role.equals("Customer"))
                  {
                     response.sendRedirect("Customer.jsp");  
                  }
                  else if(role.equals("Salesman"))
                  {
                    response.sendRedirect("Salesman.jsp");   
                  }
                  else 
                  {
                     response.sendRedirect("Retailer.jsp");  
                  }
              }
              else
              {
                 response.sendRedirect("index.jsp?msg=Username/Email Id doesn't match with your selected role"); 
              }
            
            
         }
         else
         {
             response.sendRedirect("index.jsp?msg=Either Username/Email Id or Password is Incorrect");
         }
           
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
