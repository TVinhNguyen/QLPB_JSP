<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 01/12/2024
  Time: 1:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
    }
    .container {
      display: flex;
      height: 100vh;
    }
    .menu {
      width: 20%;
      background-color: #f4f4f4;
      border-right: 1px solid #ccc;
      padding: 15px;
    }
    .menu a {
      display: block;
      padding: 10px;
      text-decoration: none;
      color: #333;
      margin-bottom: 5px;
      border-radius: 5px;
    }
    .menu a:hover {
      background-color: #ddd;
    }
    .content {
      flex: 1;
      padding: 15px;
      overflow-y: auto;
    }
  </style>
</head>
<body>

<%
  String loggedInUser = (String)  session.getAttribute("loggedInUser");
%>
<div class="container">
  <div class="menu">
    <% if (loggedInUser == null) { %>
    <a href="/View/viewLogin" target="main-content">Đăng nhập</a>
    <% } else { %>
    <p>Chào mừng, <%= loggedInUser %>!</p>
    <a href="/CRUD/themNV" target="main-content">Thêm nhân viên</a>
    <a href="/View/capnhatPB" target="main-content">Cập nhật phòng ban</a>
    <a href="/View/xoiamotNV" target="main-content">Xóa một nhân viên</a>
    <a href="/View/xoanhieuNV" target="main-content">Xóa nhiều nhân viên</a>
    <% } %>
    <a href="/View/NV" target="main-content">Xem thông tin NV</a>
    <a href="/View/PB" target="main-content">Xem thông tin PB</a>

    <a href="/View/viewtimkiem" target="main-content">Tìm kiếm</a>
    <% if(loggedInUser != null) { %>
    <a href="/logout" target="_self">Đăng xuất</a>
    <% } %>
  </div>
  <iframe class="content" name="main-content" frameborder="0"></iframe>
</div>

</body>
</html>
