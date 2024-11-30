<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="edit" method="post">
    Mã Phòng Ban:
    <input type="text" name="IDPB" value="<%= request.getAttribute("IDPB") %>" readonly><br>

    Tên Phòng Ban:
    <input type="text" name="TenPB" value="<%= request.getAttribute("TenPB") %>"><br>

    Mô Tả:
    <input type="text" name="MoTa" value="<%= request.getAttribute("MoTa") %>"><br>

    <button type="submit">Cập nhật phòng ban</button>
</form>

</body>
</html>
