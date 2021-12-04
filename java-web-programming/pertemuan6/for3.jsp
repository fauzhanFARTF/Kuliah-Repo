<!DOCTYPE html>
<html>
<head>
    <title>For</title>
</head>
<body>
<body>
    Penggunaan fungsi perulangan dengan For  
    <br>
    buat deret 3, 7, 15, 31
    <br>
    <%! int a; %>
    <%
        
    for (a=3; a<=31; a=a*2+1)
        {
            out.println("Nilai a = "+ a);
            out.println("<br>");
        }
        out.println("<p align=\" center \">");
        out.println("<img width=354 height=88 src=\" images/banner.png\">");
        out.println("</p>");
    %>
</body>
</html>