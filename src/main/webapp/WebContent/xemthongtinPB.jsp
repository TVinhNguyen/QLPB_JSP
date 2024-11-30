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
</head>
<body>
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
    <% } %>
    </tbody>
</table>
</body>
</html>