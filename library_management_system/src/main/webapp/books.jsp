<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f7f7f7, #e0e0e0);
            margin: 0;
            padding: 0;
            color: #333;
        }
        header {
            background: #007BFF;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            margin: 0;
            font-size: 36px;
            font-weight: bold;
        }
        .container {
            width: 80%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background: #fff;
            border-radius: 8px;
            overflow: hidden;
        }
        table th, table td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        table th {
            background: #007BFF;
            color: #fff;
        }
        table tr:nth-child(even) {
            background: #f9f9f9;
        }
        table tr:hover {
            background: #f1f1f1;
        }
        a {
            color: #007BFF;
            text-decoration: none;
            font-size: 16px;
            margin-right: 15px;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .links {
            text-align: center;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Books List</h1>
    </header>
    <div class="container">
        <c:choose>
            <c:when test="${not empty books}">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Genre</th>
                            <th>Publisher</th>
                            <th>Year</th>
                            <th>ISBN</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.id}</td>
                                <td>${book.title}</td>
                                <td>${book.author}</td>
                                <td>${book.genre}</td>
                                <td>${book.publisher}</td>
                                <td>${book.year}</td>
                                <td>${book.isbn}</td>
                                <td>${book.quantity}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p style="text-align: center; font-size: 18px;">No books available</p>
            </c:otherwise>
        </c:choose>
        <div class="links">
            <a href="home2.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
