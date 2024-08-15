package com.controller;

import com.model.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/library";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Virat@1818";

    private static final String INSERT_BOOK_SQL = "INSERT INTO books (title, author, genre, publisher, year, isbn, quantity) VALUES (?, ?, ?, ?, ?, ?, ?);";
    private static final String SELECT_ALL_BOOKS = "SELECT * FROM books";
    private static final String SELECT_BOOK_BY_GENRE = "SELECT * FROM books WHERE genre = ?";
    private static final String UPDATE_BOOK_QUANTITY = "UPDATE books SET quantity = ? WHERE id = ?";
    private static final String SELECT_BOOK_BY_ID = "SELECT * FROM books WHERE id = ?";
    private static final String DELETE_BOOK_BY_ISBN = "DELETE FROM books WHERE isbn = ?";

    public BookDAO() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void addBook(Book book) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_SQL)) {
            preparedStatement.setString(1, book.getTitle());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getGenre());
            preparedStatement.setString(4, book.getPublisher());
            preparedStatement.setInt(5, book.getYear());
            preparedStatement.setString(6, book.getIsbn());
            preparedStatement.setInt(7, book.getQuantity());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public List<Book> getAllBooks() {
        List<Book> books = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOKS)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String genre = rs.getString("genre");
                String publisher = rs.getString("publisher");
                int year = rs.getInt("year");
                String isbn = rs.getString("isbn");
                int quantity = rs.getInt("quantity");
                books.add(new Book(id, title, author, genre, publisher, year, isbn, quantity));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return books;
    }

    public List<Book> getBooksByGenre(String genre) {
        List<Book> books = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOK_BY_GENRE)) {
            preparedStatement.setString(1, genre);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String publisher = rs.getString("publisher");
                int year = rs.getInt("year");
                String isbn = rs.getString("isbn");
                int quantity = rs.getInt("quantity");
                books.add(new Book(id, title, author, genre, publisher, year, isbn, quantity));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return books;
    }

    public void updateBookQuantity(int id, int quantity) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BOOK_QUANTITY)) {
            preparedStatement.setInt(1, quantity);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Book getBookById(int id) {
        Book book = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOK_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String title = rs.getString("title");
                String author = rs.getString("author");
                String genre = rs.getString("genre");
                String publisher = rs.getString("publisher");
                int year = rs.getInt("year");
                String isbn = rs.getString("isbn");
                int quantity = rs.getInt("quantity");
                book = new Book(id, title, author, genre, publisher, year, isbn, quantity);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return book;
    }

    public boolean removeBookByISBN(String isbn) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BOOK_BY_ISBN)) {
            preparedStatement.setString(1, isbn);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
