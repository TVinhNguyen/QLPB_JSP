<%@ page import="model.bean.nhanvien" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/CRUD/xoanhieuNV" method="post" id="deleteForm">
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
                nhanvien nv = nhanvienList.get(i);

        %>
        <tr >
            <td><%= nv.getIDNV()%></td>
            <td><%= nv.getHoTen()%></td>
            <td><%= nv.getIDPB()%></td>
            <td><%= nv.getDiaChi()%></td>
            <td><input type="checkbox" name="idnv" value="<%= nv.getIDNV() %>"></td>

        </tr>
        <% } %>

        </tbody>
    </table>
    <button type="button" onclick="submitDeleteForm()">Xóa Nhân Viên</button>
</form>
<script>
    function submitDeleteForm() {
        const form = document.getElementById('deleteForm');
        const checkboxes = document.querySelectorAll('input[name="idnv"]:checked');

        if (checkboxes.length === 0) {
            alert("Vui lòng chọn ít nhất 1 nhân viên để xóa.");
            return;
        }

        form.submit();
    }
</script>
</body>
</html>
