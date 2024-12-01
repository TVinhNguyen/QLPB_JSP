<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 30/11/2024
  Time: 4:44 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/CRUD/timkiemNV" method="post">
    <div class="radio-group">
        <label>
            <input type="radio" name="option" value="IDNV" checked>
            IDNV
        </label>

        <label>
            <input type="radio" name="option" value="HoTen">
            Họ Tên
        </label>

        <label>
            <input type="radio" name="option" value="IDPB">
            IDPB
        </label>

        <label>
            <input type="radio" name="option" value="DiaChi">
            Địa chỉ
        </label>
    </div>
    <label for="infor"><strong>Nhập Thông tin:</strong></label>
    <input type="text" id="infor" name="infor" required><br><br>
    <input type="submit" value="Tìm kiếm">
</form>
</body>
</html>
