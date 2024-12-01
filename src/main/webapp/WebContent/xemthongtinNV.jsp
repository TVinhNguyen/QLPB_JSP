<%@ page import="java.util.List" %>
<%@ page import="model.bean.nhanvien" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Danh sách nhân viên</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      margin: 20px;
    }
    table {
      width: 80%;
      margin: auto;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    th, td {
      padding: 12px 15px;
      text-align: left;
      border: 1px solid #ddd;
    }
    th {
      background-color: #007bff;
      color: white;
      font-weight: bold;
      text-transform: uppercase;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    tr:hover {
      background-color: #f1c40f;
      color: #fff;
      transition: 0.3s;
    }
    td {
      color: #333;
    }
    thead {
      position: sticky;
      top: 0;
    }
    h1 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

<h1>Danh Sách Nhân Viên</h1>

<table>
  <thead>
  <tr>
    <th>IDNV</th>
    <th>Tên</th>
    <th>IDPB</th>
    <th>Địa chỉ</th>
  </tr>
  </thead>
  <tbody>
  <%
    List<nhanvien> nhanvienList = (List<nhanvien>) request.getAttribute("nhanvienList");
    if (nhanvienList != null && !nhanvienList.isEmpty()) {
      for (int i = 0; i < nhanvienList.size(); i++) {
        nhanvien nv = nhanvienList.get(i);
  %>
  <tr>
    <td><%= nv.getIDNV() %></td>
    <td><%= nv.getHoTen() %></td>
    <td><%= nv.getIDPB() %></td>
    <td><%= nv.getDiaChi() %></td>
  </tr>
  <%      }
  } else { %>
  <tr>
    <td colspan="4" style="text-align: center; color: red;">Không có dữ liệu nhân viên</td>
  </tr>
  <% } %>
  </tbody>
</table>

</body>
</html>
