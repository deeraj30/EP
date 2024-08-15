package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        // Database connection parameters
        String dbURL = "jdbc:mysql://localhost:3306/library";
        String dbUser = "root";
        String dbPassword = "Virat@1818";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare the SQL statement
            String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, email);

            // Execute the SQL statement
            int rows = pstmt.executeUpdate();

            // Check if the insertion was successful
            response.setContentType("text/html");
            if (rows > 0) {
                response.getWriter().println("<html><head><title>Success</title><style>");
                response.getWriter().println("body { background: linear-gradient(to right, #00b09b, #96c93d); font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; color: white; text-align: center; }");
                response.getWriter().println(".container { background: rgba(0, 0, 0, 0.5); padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); }");
                response.getWriter().println("h1 { margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); }");
                response.getWriter().println("form { margin-top: 20px; }");
                response.getWriter().println("button { padding: 10px 20px; background: #4facfe; border: none; border-radius: 5px; color: white; font-size: 16px; cursor: pointer; transition: background 0.3s; }");
                response.getWriter().println("button:hover { background: #00f2fe; }");
                response.getWriter().println("</style></head><body>");
                response.getWriter().println("<div class='container'>");
                response.getWriter().println("<h1>User registered successfully!</h1>");
                response.getWriter().println("<form action='http://localhost:8080/library_management_system/home.jsp' method='get'>");
                response.getWriter().println("<button type='submit'>Go to Home</button>");
                response.getWriter().println("</form>");
                response.getWriter().println("</div>");
                response.getWriter().println("</body></html>");
            } else {
                response.getWriter().println("<html><body>");
                response.getWriter().println("<h1>Failed to register user.</h1>");
                response.getWriter().println("</body></html>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("<html><body>");
            response.getWriter().println("<h1>Error: " + e.getMessage() + "</h1>");
            response.getWriter().println("</body></html>");
        } finally {
            // Close the resources
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
