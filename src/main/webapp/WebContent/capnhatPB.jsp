<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            padding: 20px;
            margin: 0;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 0 auto;
        }

        form input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }

        form button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        form button:hover {
            background-color: #45a049;
        }

        form label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        form input[type="text"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        form div {
            margin-bottom: 10px;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

    </style>
</head>
<body>
<form action="edit" method="post">
    Mã Phòng Ban:
    <input type="text" name="IDPB" value="<%= request.getAttribute("IDPB") %>" readonly><br>

    Tên Phòng Ban:
    <input type="text" name="TenPB" value="<%= request.getAttribute("TenPB") %>"><br>

    Mô Tả:
    <input type="text" name="MoTa" value="<%= request.getAttribute("MoTa") %>"><br>

    <button type="submit">Cập nhật phòng ban</button>
</form>

</body>
</html>
