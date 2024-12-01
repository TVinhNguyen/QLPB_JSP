<%@ page import="model.bean.phongban" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 8:58 AM
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

    /* Định dạng cho bảng */
    table {
      width: 80%;
      margin: 20px 0;
      border-collapse: collapse;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }

    /* Định dạng cho các tiêu đề cột */
    th {
      background-color: #4CAF50;
      color: white;
      padding: 12px;
      text-align: left;
      font-size: 16px;
    }

    /* Định dạng cho các ô trong bảng */
    td {
      padding: 12px;
      text-align: left;
      font-size: 14px;
      border-top: 1px solid #ddd;
    }

    /* Định dạng cho các hàng trong bảng */
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    /* Định dạng cho liên kết "Cập nhật" */
    a {
      color: #4CAF50;
      text-decoration: none;
      font-weight: bold;
    }

    a:hover {
      color: #45a049;
    }

    /* Định dạng cho trường hợp không có dữ liệu */
    tbody tr.no-data {
      text-align: center;
      font-style: italic;
      color: #888;
    }

    /* Định dạng cho tiêu đề trang */
    h1 {
      font-size: 24px;
      margin-bottom: 20px;
      color: #333;
    }

  </style>
</head>
<body>
<table>
  <thead>
  <tr>
    <th>IDPB</th>
    <th>Tên Phòng Ban</th>
    <th>Mô Tả</th>
    <th>Cập nhật Phòng Ban</th>
  </tr>
  </thead>
  <tbody>
  <%
    List<phongban> phongbanList = (List<phongban>)  request.getAttribute("phongbanList");
    for(int i = 0 ;i<phongbanList.size();i++)
    {
      phongban pb = phongbanList.get(i);

  %>
  <tr>
    <td><%= pb.getIDPB()%></td>
    <td><%= pb.getTenPB()%></td>
    <td><%= pb.getMoTa()%></td>
    <td>
      <a href="/CRUD/capnhatPB?idpb=<%= pb.getIDPB()%>">Cập nhật</a>
    </td>
  </tr>
  <% } %>
  </tbody>
</table>
</body>
</html>
