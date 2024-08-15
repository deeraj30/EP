<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            color: #333;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(270deg, #d4fc79, #96e6a1);
            background-size: 400% 400%;
            animation: gradientBackground 15s ease infinite;
        }

        @keyframes gradientBackground {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        header {
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            margin-top: 30px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }
        h1 {
            margin: 0;
            font-size: 48px;
            color: #333;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }
        .links {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .links a {
            color: #333;
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.7);
            font-size: 18px;
            transition: background 0.3s, transform 0.3s;
            box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.3);
        }
        .links a:hover {
            background: rgba(255, 255, 255, 0.9);
            transform: scale(1.1);
        }
        .back-home {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Admin Page</h1>
    </header>
    <div class="links">
        <a href="addBook.jsp">ADD BOOK</a>
        <a href="addStock.jsp">ADD STOCK</a>
        <a href="books">BOOKS LIST</a>
        <a href="verifyStock.jsp">VERIFY STOCK</a>
        <a href="removebook.jsp">REMOVE BOOK</a>
    </div>
    <div class="back-home">
        <a href="home2.jsp">BACK TO HOME</a>
    </div>
</body>
</html>
