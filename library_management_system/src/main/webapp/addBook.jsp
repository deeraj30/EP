<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            margin: 0;
            padding: 0;
        }
        header {
            background: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            border-bottom: #bbb 1px solid;
        }
        header h1 {
            margin: 0;
            font-size: 28px;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            overflow: hidden;
        }
        .form-container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 20px auto;
        }
        form label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            font-size: 16px;
        }
        form input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        form input[type="submit"] {
            background: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-transform: uppercase;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
            transition: background 0.3s ease;
        }
        form input[type="submit"]:hover {
            background: #0056b3;
        }
        .link-container {
            text-align: center;
            margin-top: 20px;
        }
        .link-container a {
            color: #007BFF;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
        }
        .link-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <h1>Add a New Book</h1>
    </header>
    <div class="container">
        <div class="form-container">
            <form action="insert" method="post">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>

                <label for="author">Author:</label>
                <input type="text" id="author" name="author" required>

                <label for="genre">Genre:</label>
                <input type="text" id="genre" name="genre" required>

                <label for="publisher">Publisher:</label>
                <input type="text" id="publisher" name="publisher" required>

                <label for="year">Year:</label>
                <input type="text" id="year" name="year" required>

                <label for="isbn">ISBN:</label>
                <input type="text" id="isbn" name="isbn" required>

                <label for="quantity">Quantity:</label>
                <input type="text" id="quantity" name="quantity" required>

                <input type="submit" value="Add Book">
            </form>
        </div>
        <div class="link-container">
            <a href="home2.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
