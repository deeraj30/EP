<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Stock</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f0f0f0, #d8e2f3);
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 60%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }
        h1 {
            color: #007BFF;
            text-align: center;
            margin-bottom: 20px;
            font-size: 28px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 16px;
        }
        input[type="text"], input[type="number"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #007BFF;
            text-decoration: none;
            font-size: 16px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Stock</h1>

        <form action="addStock" method="post">
            <!-- Form fields for adding stock -->
            <label for="bookId">Book ID:</label>
            <input type="text" id="bookId" name="bookId" required>

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" required>

            <button type="submit">Add Stock</button>
        </form>

        <div class="link-container">
            <a href="home2.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
