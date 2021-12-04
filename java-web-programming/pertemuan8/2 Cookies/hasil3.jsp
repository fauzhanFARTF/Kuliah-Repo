<html>
<body>
    <%
        Cookie loginCookie = new Cookie("user", "");
        response.addCookie(loginCookie);
        Cookie loginCookie2 = new Cookie("password", "");
        response.addCookie(loginCookie2);
    %>
    Cookies sudah dihapus
    <a href="hasil2.jsp">Melihat Cookies</a>
</body>
</html>