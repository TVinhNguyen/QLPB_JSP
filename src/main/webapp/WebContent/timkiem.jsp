<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 30/11/2024
  Time: 4:44 CH
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

        /* Định dạng cho form tìm kiếm */
        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: left;
            display: flex;
            flex-direction: column;
        }

        /* Định dạng cho nhóm radio button */
        .radio-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }

        /* Định dạng cho radio button */
        .radio-group label {
            margin-bottom: 10px;
            font-size: 14px;
        }

        /* Định dạng trường input */
        form input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        /* Định dạng nút submit */
        form input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            margin-top: 10px;
        }

        form input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Thêm hiệu ứng focus cho trường nhập liệu */
        form input[type="text"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

    </style>

</head>
<body>
<form action="/CRUD/timkiemNV" method="post">
    <div class="radio-group">
        <label>
            <input type="radio" name="option" value="IDNV" checked>
            IDNV
        </label>

        <label>
            <input type="radio" name="option" value="HoTen">
            Họ Tên
        </label>

        <label>
            <input type="radio" name="option" value="IDPB">
            IDPB
        </label>

        <label>
            <input type="radio" name="option" value="DiaChi">
            Địa chỉ
        </label>
    </div>
    <label for="infor"><strong>Nhập Thông tin:</strong></label>
    <input type="text" id="infor" name="infor" required><br><br>
    <input type="submit" value="Tìm kiếm">
</form>
</body>
</html>
