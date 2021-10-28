<!DOCTYPE html>
<html>
<head>
    <title>FormIf</title>
</head>
<body>
    <%
        int inilai;
        String snilai;
        snilai=request.getParameter("txtnilai");
        inilai=Integer.parseInt(snilai);
        if (inilai<=12 )
        {
            out.println("Anak-Anak");
        }
        else if (inilai<= 21)
        {
            out.println("Remaja");
        }
        else
        {
            out.println("Dewasa");
        }
    %>
</body>
</html>