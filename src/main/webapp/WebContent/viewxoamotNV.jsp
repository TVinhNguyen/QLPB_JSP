<%@ page import="model.bean.nhanvien" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>IDNV</th>
        <th>Tên Nhân Viên</th>
        <th>IDPB</th>
        <th>Địa Chỉ</th>
        <th>Chọn Nhân Viên Cần Xóa</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<nhanvien> nhanvienList = (List<nhanvien>)  request.getAttribute("nhanvienList");
        for(int i = 0 ;i<nhanvienList.size();i++)
        {
            nhanvien pb = nhanvienList.get(i);

    %>
    <tr>
        <td><%= pb.getIDNV()%></td>
        <td><%= pb.getHoTen()%></td>
        <td><%= pb.getIDPB()%></td>
        <td><%= pb.getDiaChi()%></td>

        <td>
            <a href="/CRUD/xoaNV?idnv=<%= pb.getIDNV()%>">Xóa</a>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
