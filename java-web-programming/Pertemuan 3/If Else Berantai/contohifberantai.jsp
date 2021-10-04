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
        if (inilai>80)
        {
            out.println("A");
        }
        else if (inilai>70)
        {
            out.println("B");
        }
        else if (inilai>60)
        {
            out.println("C");
        }
        else if (inilai>50)
        {
            out.println("D");
        }
        else
        {
            out.println("E");
        }
    %>
</body>
</html>