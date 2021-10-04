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
        if (inilai>60)
        {
            out.println("Lulus");
        }
        else
        {
            out.println("Tidak Lulus");
        }
    %>
</body>
</html>