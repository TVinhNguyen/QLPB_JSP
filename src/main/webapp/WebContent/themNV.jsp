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
