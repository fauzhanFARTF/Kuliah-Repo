<html>
<body>
    <%
        Cookie theCookie=null;
        Cookie cookieList[]=request.getCookies();
        for (int i=0; i<cookieList.length;i++){
            theCookie=cookieList[i];
            if(theCookie.getName().equals("user")){
                out.print("Cookie:");
                out.println(" "+theCookie.getValue()+"<br>");
            }
        }
    %>
    <a href="hasil3.jsp">Lanjut Menghapus Cookies</a>
</body>
</html>