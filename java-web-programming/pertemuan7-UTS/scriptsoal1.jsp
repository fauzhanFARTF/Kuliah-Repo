<!DOCTYPE html>
<html>
<head>
    <title>Soal1</title>
</head>
<body>
    <%
        String sgajibersih, sgaji, sjumlahanak, stunjangananak;
        int igajibersih, igaji, ijumlahanak, itunjangananak;
        sgaji=request.getParameter("txtgaji");
        sjumlahanak=request.getParameter("txtjumlahanak");
        stunjangananak=request.getParameter("txttunjangananak");
        igaji=Integer.parseInt(sgaji);
        ijumlahanak=Integer.parseInt(sjumlahanak);
        itunjangananak=Integer.parseInt(stunjangananak);
        igajibersih= itunjangananak*ijumlahanak+igaji;
        out.println("Gaji Bersih = "+ igajibersih + "<br>");

    %>
</body>
</html>