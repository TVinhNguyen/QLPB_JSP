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
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;

        }

        /* Định dạng cho bảng */
        table {
            width: 90%;
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

        /* Định dạng cho checkbox */
        input[type="checkbox"] {
            transform: scale(1.2);
            margin: 0;
        }

        /* Định dạng cho nút Xóa Nhân Viên */
        button {
            background-color: #f44336;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #e53935;
        }

        /* Định dạng cho cảnh báo khi không chọn nhân viên */
        .alert {
            color: red;
            font-size: 14px;
            margin-top: 10px;
            text-align: center;
            display: none;
        }

        /* Định dạng cho phần chú thích */
        p {
            font-size: 14px;
            color: #555;
            text-align: center;
        }

    </style>
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
