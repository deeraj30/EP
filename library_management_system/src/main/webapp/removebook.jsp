<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Remove Book</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h2 {
            color: #4a90e2;
            text-align: center;
            font-weight: bold;
            background-color: #e3f2fd;
            padding: 10px;
            border-radius: 8px;
        }
        form {
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #357ab8;
        }
        .link-container {
            text-align: center;
            margin-top: auto;
            padding-top: 20px;
        }
        .link-container a {
            color: #4a90e2;
            text-decoration: none;
        }
        .link-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Remove Book</h2>
    <form action="remove" method="post">
        <label for="isbn">ISBN:</label>
        <input type="text" id="isbn" name="isbn" required>
        <input type="submit" value="Remove Book">
    </form>
    <div class="link-container">
        <a href="home2.jsp">Back to home</a>
    </div>
</body>
</html>
