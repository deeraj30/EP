<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            text-align: center;
            color: white;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100vh;
        }
        header {
            padding: 20px;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            margin-bottom: 30px;
        }
        h1 {
            margin: 0;
            font-size: 48px;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.7);
        }
        .links {
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        .links a {
            color: #fff;
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 5px;
            background: rgba(0, 0, 0, 0.5);
            font-size: 18px;
            transition: background 0.3s, transform 0.3s;
            box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.7);
        }
        .links a:hover {
            background: rgba(0, 0, 0, 0.7);
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to the Library Management System</h1>
    </header>
    <div class="links">
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Sign Up</a>
        
    </div>
</body>
</html>