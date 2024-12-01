<%@ page import="model.bean.phongban" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 11:52 PM
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
<h1>Danh Sách Phòng Ban</h1>

<table>
    <thead>
    <tr>
        <th>IDPB</th>
        <th>Tên Phòng Ban</th>
        <th>Mô Tả</th>
        <th>Xem Thêm</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<phongban> phongbanList = (List<phongban>)  request.getAttribute("phongbanList");
        if (phongbanList != null && !phongbanList.isEmpty()) {
            for(int i = 0 ;i<phongbanList.size();i++)
        {
            phongban pb = phongbanList.get(i);

    %>
    <tr>
        <td><%= pb.getIDPB()%></td>
        <td><%= pb.getTenPB()%></td>
        <td><%= pb.getMoTa()%></td>
        <td>
            <a href="xemthongtinNVPB?idpb=<%= pb.getIDPB()%>">Xem Thông Tin NV</a>
        </td>
    </tr>
    <%      }
        } else { %>
    <tr>
        <td colspan="4" style="text-align: center; color: red;">Không có dữ liệu phòng ban</td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
