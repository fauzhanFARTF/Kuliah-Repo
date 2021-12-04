<%
String userid, pass;
userid = request.getParameter("txtuser");
pass=request.getParameter("txtpassword");
Cookie loginCookie = new Cookie("user",userid);
response.addCookie(loginCookie);
%>
<html>
<body>
    Jika Anda Berhasil Melihat Halaman ini berarti Cookies telah terpasang
    <a href="hasil2.jsp">Lanjut Melihat Cookies</a>
</body>
</html>