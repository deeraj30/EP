package com.controller;

import com.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/")
public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertBook(request, response);
                    break;
                case "/verifyStock":
                    verifyStock(request, response);
                    break;
                case "/sellBook":
                    sellBook(request, response);
                    break;
                case "/addStock":
                    addStock(request, response);
                    break;
                case "/booksByGenre":
                    booksByGenre(request, response);
                    break;
                case "/remove":
                    removeBook(request, response);
                    break;
                default:
                    listBooks(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listBooks(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Book> listBooks = bookDAO.getAllBooks();
        request.setAttribute("books", listBooks);
        request.getRequestDispatcher("books.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("addBook.jsp").forward(request, response);
    }

    private void insertBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String genre = request.getParameter("genre");
        String publisher = request.getParameter("publisher");
        int year = Integer.parseInt(request.getParameter("year"));
        String isbn = request.getParameter("isbn");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Book newBook = new Book(0, title, author, genre, publisher, year, isbn, quantity);
        bookDAO.addBook(newBook);
        response.sendRedirect("list");
    }

    private void verifyStock(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("bookId"));
        Book existingBook = bookDAO.getBookById(id);
        request.setAttribute("book", existingBook);
        request.getRequestDispatcher("verifyStock.jsp").forward(request, response);
    }

    private void sellBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("bookId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Book existingBook = bookDAO.getBookById(id);
        int newQuantity = existingBook.getQuantity() - quantity;

        if (newQuantity >= 0) {
            bookDAO.updateBookQuantity(id, newQuantity);
        }

        response.sendRedirect("list");
    }

    private void addStock(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("bookId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Book existingBook = bookDAO.getBookById(id);
        int newQuantity = existingBook.getQuantity() + quantity;

        bookDAO.updateBookQuantity(id, newQuantity);
        response.sendRedirect("list");
    }

    private void booksByGenre(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String genre = request.getParameter("genre");
        List<Book> booksByGenre = bookDAO.getBooksByGenre(genre);
        request.setAttribute("books", booksByGenre);
        request.getRequestDispatcher("booksByGenre.jsp").forward(request, response);
    }

    private void removeBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String isbn = request.getParameter("isbn");
        bookDAO.removeBookByISBN(isbn);
        response.sendRedirect("list");
    }
}
