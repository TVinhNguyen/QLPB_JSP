<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* Cài đặt kiểu cho toàn bộ trang */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Định dạng cho form đăng nhập */
        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        /* Định dạng các trường input */
        form input[type="text"],
        form input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }

        /* Định dạng nút submit và reset */
        form input[type="submit"],
        form input[type="reset"] {
            width: 48%;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            margin-top: 10px;
            margin-right: 4%;
            box-sizing: border-box;
        }

        form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
        }

        form input[type="submit"]:hover {
            background-color: #45a049;
        }

        form input[type="reset"] {
            background-color: #f44336;
            color: white;
        }

        form input[type="reset"]:hover {
            background-color: #e53935;
        }

        /* Định dạng các nhãn */
        form label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
            text-align: left;
        }

        /* Thêm hiệu ứng focus cho các trường nhập liệu */
        form input[type="text"]:focus,
        form input[type="password"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

    </style>
</head>
<body>
<form action="/CheckLoginServlet" method="post"  >
    Username: <input type="text" name="username">
    Password: <input type="password" name="password">
    <br> <br>
    <input type="submit" value="Login">
    <input type="reset" value="Reset">
</form>
</body>
</html>
