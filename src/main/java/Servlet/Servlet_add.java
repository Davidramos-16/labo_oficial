/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import BD.Conexion;
import Objects.Client;

/**
 *
 * @author dr264
 */
@WebServlet(name = "Servlet_add", urlPatterns = {"/Servlet_add"})
public class Servlet_add extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet_add</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet_add at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        Conexion con = new Conexion();
        String redirectURL = request.getContextPath() + "/Insert_User.jsp";
    
    // Redirecciona al cliente a la página "test.html"
    response.sendRedirect(redirectURL);
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
        
        Conexion cn = new Conexion();
        Client cln = new Client();
        
        
        cln.setNombre(request.getParameter("nombre_"));
        cln.setApellido(request.getParameter("apellido_"));
        cln.setEmail(request.getParameter("email_"));
        cln.setTelefono(request.getParameter("telefono_"));
        cln.setSaldo(Double.parseDouble(request.getParameter("saldo_")));
        cln.setEstado(Byte.parseByte(request.getParameter("estado_")));
       
        /*
        System.out.println(request.getParameter("nombre_"));
        System.out.println(request.getParameter("apellido_"));
        System.out.println(request.getParameter("email_"));
        System.out.println(request.getParameter("telefono_"));
        System.out.println(Double.parseDouble(request.getParameter("saldo_")));
        System.out.println(Boolean.parseBoolean(request.getParameter("estado_")));
        */
        cn.insert(cln.getNombre(), cln.getApellido(), cln.getEmail(), cln.getTelefono(), cln.getSaldo(), cln.getEstado());
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
