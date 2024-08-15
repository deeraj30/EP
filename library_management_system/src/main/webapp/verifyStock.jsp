<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Verify Stock and Sell Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"] {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 20px;
            width: 100%;
            max-width: 400px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        p {
            font-size: 18px;
            color: #333;
        }
        .link-container {
            margin-top: 20px;
        }
        .link-container a {
            color: #4CAF50;
            text-decoration: none;
            font-size: 16px;
            display: block;
        }
        .link-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Verify Stock and Sell Book</h2>
        
        <form action="verifyStock" method="post">
            <label for="bookId">Book ID:</label>
            <input type="text" id="bookId" name="bookId" required>
            <input type="submit" value="Verify Stock">
        </form>
        
        <c:if test="${not empty book}">
            <p>Title: ${book.title}</p>
            <p>Quantity: ${book.quantity}</p>
            <form action="sellBook" method="post">
                <input type="hidden" name="bookId" value="${book.id}">
                <label for="quantity">Quantity to sell:</label>
                <input type="text" id="quantity" name="quantity" required>
                <input type="submit" value="Sell Book">
            </form>
        </c:if>
    </div>
    
    <div class="link-container">
        <a href="home2.jsp">Back to home</a>
    </div>
</body>
</html>
