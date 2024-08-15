package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Database connection parameters
        String dbURL = "jdbc:mysql://localhost:3306/library";
        String dbUser = "root";
        String dbPassword = "Virat@1818";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare the SQL statement
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            // Execute the query
            rs = pstmt.executeQuery();

            // Check if the user exists
            response.setContentType("text/html");
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.getWriter().println("<html><head><title>Login Successful</title><style>");
                response.getWriter().println("body { background: linear-gradient(to right, #4facfe, #00f2fe); font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; color: white; text-align: center; }");
                response.getWriter().println(".container { background: rgba(0, 0, 0, 0.5); padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); }");
                response.getWriter().println("h1 { margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); }");
                response.getWriter().println("form { margin-top: 20px; }");
                response.getWriter().println("button { padding: 10px 20px; background: #4facfe; border: none; border-radius: 5px; color: white; font-size: 16px; cursor: pointer; transition: background 0.3s; }");
                response.getWriter().println("button:hover { background: #00f2fe; }");
                response.getWriter().println("</style></head><body>");
                response.getWriter().println("<div class='container'>");
                response.getWriter().println("<h1>Login successful!</h1>");
                response.getWriter().println("<form action='http://localhost:8080/library_management_system/home2.jsp' method='get'>");
                response.getWriter().println("<button type='submit'>Go to Home</button>");
                response.getWriter().println("</form>");
                response.getWriter().println("</div>");
                response.getWriter().println("</body></html>");
            } else {
                response.getWriter().println("<html><head><title>Login Failed</title><style>");
                response.getWriter().println("body { background: linear-gradient(to right, #ff7e5f, #feb47b); font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; color: white; text-align: center; }");
                response.getWriter().println(".container { background: rgba(0, 0, 0, 0.5); padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); }");
                response.getWriter().println("h1 { margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); }");
                response.getWriter().println("a { padding: 10px 20px; background: #ff7e5f; border: none; border-radius: 5px; color: white; font-size: 16px; text-decoration: none; transition: background 0.3s; }");
                response.getWriter().println("a:hover { background: #feb47b; }");
                response.getWriter().println("</style></head><body>");
                response.getWriter().println("<div class='container'>");
                response.getWriter().println("<h1>Invalid username or password. Only registered users can log in.</h1>");
                response.getWriter().println("<a href='login.jsp'>Try again</a>");
                response.getWriter().println("</div>");
                response.getWriter().println("</body></html>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("<html><head><title>Error</title><style>");
            response.getWriter().println("body { background: linear-gradient(to right, #ff7e5f, #feb47b); font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; color: white; text-align: center; }");
            response.getWriter().println(".container { background: rgba(0, 0, 0, 0.5); padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); }");
            response.getWriter().println("h1 { margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); }");
            response.getWriter().println("</style></head><body>");
            response.getWriter().println("<div class='container'>");
            response.getWriter().println("<h1>Error: " + e.getMessage() + "</h1>");
            response.getWriter().println("</div>");
            response.getWriter().println("</body></html>");
        } finally {
            // Close the resources
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
