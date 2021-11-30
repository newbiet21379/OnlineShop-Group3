/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DBContext.BlogDAO;
import entity.Blog;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ottelia
 */
public class AddBlog extends HttpServlet {

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
        // Vietnamese character
        request.setCharacterEncoding("UTF-8");
        // get data from jsp
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String imageLink = request.getParameter("imageLink");
        String author = request.getParameter("author");
        try {
            BlogDAO dao = new BlogDAO();
            dao.add(author, title, content, imageLink);
            response.sendRedirect("ManageBlog");
        } catch (Exception e) {
            response.sendRedirect("error.jsp");

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
        response.sendRedirect("AddBlog.jsp");
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
        response.setContentType("text/html;charset=UTF-8");
        //Allow Vietnamese Characters
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String imageLink = request.getParameter("imageLink");
        String author = request.getParameter("author");
        try {

            BlogDAO dao = new BlogDAO();
            dao.add(author, title, content, imageLink);
            request.getRequestDispatcher("ManageBlog").forward(request, response);
        } catch (Exception e) {
            response.sendRedirect("error.jsp");

        }
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
