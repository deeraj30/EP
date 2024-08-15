<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
            color: white;
        }
        h1 {
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        form {
            background: rgba(0, 0, 0, 0.5);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #4facfe;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }
        input[type="submit"]:hover {
            background: #00f2fe;
        }
        .link-container {
            margin-top: 20px;
            text-align: center;
        }
        .link-container a {
            color: white;
            text-decoration: none;
            transition: color 0.3s;
            display: block;
            margin: 10px 0;
        }
        .link-container a:hover {
            color: #ff7e5f;
        }
    </style>
</head>
<body>
    <h1>Sign Up</h1>
    <form action="signup" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <input type="submit" value="Sign Up">
        
        <div class="link-container">
            <a href="home.jsp">Back to home</a>
            <a href="login.jsp">Login</a>
        </div>
    </form>
</body>
</html>
