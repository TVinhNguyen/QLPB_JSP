<%@ page import="java.util.List" %>
<%@ page import="model.bean.nhanvien" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 11:12 PM
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
    <th>Tên</th>
    <th>IDPB</th>
    <th>Địa chỉ</th>
  </tr>
  </thead>
  <tbody>
  <%
    List<nhanvien> nhanvienList = (List<nhanvien>)  request.getAttribute("nhanvienList");
    for(int i = 0 ;i<nhanvienList.size();i++)
    {
      nhanvien nv = nhanvienList.get(i);

  %>
  <tr>
    <td><%= nv.getIDNV()%></td>
    <td><%= nv.getHoTen()%></td>
    <td><%= nv.getIDPB()%></td>
    <td><%= nv.getDiaChi()%></td>
  </tr>
  <% } %>
  </tbody>
</table>
</body>
</html>
