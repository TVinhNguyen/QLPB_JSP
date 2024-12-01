<%@ page import="model.bean.phongban" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 12:42 AM
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

    /* Định dạng cho form thêm nhân viên */
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

    /* Định dạng các trường input và select */
    form input[type="text"],
    form select {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      font-size: 14px;
    }

    /* Định dạng nút submit */
    form button[type="submit"] {
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

    form button[type="submit"]:hover {
      background-color: #45a049;
    }

    /* Định dạng nhãn cho các trường */
    form label {
      font-weight: bold;
      margin-bottom: 8px;
    }

    /* Thêm hiệu ứng focus cho các trường nhập liệu */
    form input[type="text"]:focus,
    form select:focus {
      border-color: #4CAF50;
      outline: none;
    }

    /* Định dạng cho khoảng cách giữa các phần tử */
    form br {
      margin-top: 10px;
    }

  </style>
</head>
<body>
<form action="add" method="post">
  Mã Nhân Viên : <input type="text" name="IDNV"><br>
  Tên Nhân Viên : <input type="text" name="HoTen"><br>
  Mã PB :
  <select name="IDPB">
    <%
      List<phongban> phongbanList = (List<phongban>) request.getAttribute("phongbanList");
      for (phongban pb : phongbanList) {
    %>
    <option value="<%= pb.getIDPB() %>"><%= pb.getTenPB() %></option>
    <% } %>
  </select><br>
  Địa Chỉ : <input type="text" name="DiaChi"><br>
  <button type="submit">Thêm Nhân Viên</button>
</form>
</body>
</html>
