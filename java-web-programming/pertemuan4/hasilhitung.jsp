<!DOCTYPE html>
<html>
<head>
    <title>Form Hitung If</title>
</head>
<body>
    <%
        String sjumlah, sharga, sdiskon;
        int ijumlah, iharga, ibayar, idiskon, total, hasildiskon;
        sjumlah=request.getParameter("txtjumlah");
        sharga=request.getParameter("txtharga");
        sdiskon=request.getParameter("txtdiskon");
        ijumlah=Integer.parseInt(sjumlah);
        iharga=Integer.parseInt(sharga);
        idiskon=Integer.parseInt(sdiskon);
        ibayar=ijumlah*iharga;
        hasildiskon=ibayar*idiskon/100;
        total=ibayar-hasildiskon;
        out.println("Jumlah = "+ ijumlah + "<br>");
        out.println("Harga = "+ iharga + "<br>");
        out.println("Bayarnya = "+ ibayar + " Rupiah <br>");
        out.println("Bayar Setelah Diskon = "+ total + " Rupiah <br>");

        if(ibayar>500000){
            out.println("Dapat Bonus");
        }
        else {
            out.println("Tidak dapat Bonus");
        }
    %>
</body>
</html>