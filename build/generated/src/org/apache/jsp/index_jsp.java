package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Mart Home</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"path/to/font-awesome/css/font-awesome.min.css\">\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                 background-image:url('images/walmart.jpg');\n");
      out.write("            background-repeat:no-repeat ;\n");
      out.write("            }\n");
      out.write("            .nav{\n");
      out.write("                text-decoration: none;\n");
      out.write("                padding: 1rem;\n");
      out.write("                text-align: center;\n");
      out.write("                color: black;\n");
      out.write("                font-size: 2.5rem;\n");
      out.write("                font-weight: bolder;\n");
      out.write("            }\n");
      out.write("           .nav:hover{\n");
      out.write("               color: blueviolet;\n");
      out.write("            }\n");
      out.write("            td{\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .login{ \n");
      out.write("                padding:10px;\n");
      out.write("                border-radius: 1rem;\n");
      out.write("                font-size:1.5rem;\n");
      out.write("               float: right;\n");
      out.write("                width: 500px;\n");
      out.write("                background-color:#eee;\n");
      out.write("                \n");
      out.write("            \n");
      out.write("            }\n");
      out.write("            html{\n");
      out.write("                margin: 0px;\n");
      out.write("               padding: 0px;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"lightblue\"><center>\n");
      out.write("        <header style=\"background: white; width: 100%; height:50px; padding:25px; \">\n");
      out.write("           \n");
      out.write("            <nav>\n");
      out.write("                <a class=\"nav\" href=\"index.jsp\" >Home</a>\n");
      out.write("                <a class=\"nav\" href=\"about\" >About</a>\n");
      out.write("                <a class=\"nav\" href=\"Register.jsp\" >Register</a>\n");
      out.write("                <a class=\"nav\" href=\"services\" >Our Services</a>\n");
      out.write("                <a class=\"nav\" href=\"Contact \" >Contact Us</a>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </nav>\n");
      out.write("        </header></center> <br><br><br>\n");
      out.write("       \n");
      out.write("        <div class=\"login\">\n");
      out.write("            <form action=\"Login_Conf\">\n");
      out.write("                <center> <h1> Login</h1><hr></center>\n");
      out.write("                <label style=\"margin-right: 15px;\">Login as</label> \n");
      out.write("                <input list=\"role\" name=\"role\" placeholder=\"select\" required style=\"height: 2.5rem;\" >\n");
      out.write("                <datalist id=\"role\">\n");
      out.write("                  <option value=\"Salesman\">\n");
      out.write("                  <option value=\"Retailer\">\n");
      out.write("                  <option value=\"Admin\">\n");
      out.write("                  <option value=\"Customer\">\n");
      out.write("                 \n");
      out.write("                </datalist>\n");
      out.write("                <br><br>\n");
      out.write("               \n");
      out.write("                <label style=\"Font-size:1.5rem; margin-right: 15px\">Username or Email Id</label><br>\n");
      out.write("                <input type=\"text\" placeholder=\"Username or Email Id\" name=\"user\" required style=\"width:98%;height: 2.5rem;\"><br><br>\n");
      out.write("                <label style=\"Font-size:1.5rem; margin-right: 15px\">Password</label><br>\n");
      out.write("                <input type=\"password\" placeholder=\"Password\" name=\"pass\" required style=\"width:98%;height: 2.5rem;\"><br>\n");
      out.write("                <input type=\"checkbox\"  name=\"check\" >Remember me\n");
      out.write("                \n");
      out.write("                ");

                        if(request.getParameter("msg")!=null)
                        {
                            out.println("<br> <span style='color:crimson;'>"+request.getParameter("msg")+"</span>");
                                   
                        }
                         
                    
                    
      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <br><br>\n");
      out.write("                <input type=\"submit\" value=\"Login\"  style=\"width:100%;height: 2.5rem; background-color: green; font-size:1.5rem;\"><br>\n");
      out.write("                <input type=\"Reset\" style=\"width:100%;height: 2.5rem; background-color: grey; font-size:1.5rem;\"><br>\n");
      out.write("                Are You not Register?<a href=\"Register.jsp\" style=\"text-decoration: none;\">Click here</a>\n");
      out.write("                \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("               </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
