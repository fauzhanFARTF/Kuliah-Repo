<!DOCTYPE html>
<html>
<head>
    <title>While-deretmenurun</title>
</head>
<body>
    <%! int a; %>
    <%
        a=8;
        while (a>3)
        {
            out.println("Nilai a = "+ a);
            out.println("<br>");
            a=a-1;
        }
        out.println("<p align=\" center \">");
        out.println("<img width=354 height=88 src=\" images/banner.png\">");
        out.println("</p>");
    %>
</body>
</html>