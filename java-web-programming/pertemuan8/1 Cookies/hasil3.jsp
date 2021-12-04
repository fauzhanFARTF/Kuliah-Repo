<html>
<body>
    <%
        Cookie loginCookie = new Cookie("user", "");
        response.addCookie(loginCookie);
    %>
    Cookies sudah dihapus
    <a href="hasil2.jsp">Melihat Cookies</a>
</body>
</html>