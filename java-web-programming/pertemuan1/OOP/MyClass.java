class SriWulanMargiRahayu_2020804026{
    String nama = "Sri Wulan Margi Rahayu"; 
    String kodekaryawan = "2020804026";
    SriWulanMargiRahayu_2020804026(String Nama, String Kode){
        nama = Nama;
        kodekaryawan = Kode;
        System.out.println("Nama = " + nama +" ; NIM = "+ kodekaryawan);
        int a;
        for (a=26; a<=26+40; a=a+1)
        {
            System.out.print(a + ",");
        }
        System.out.println("");
    }
}
public class MyClass {
    public static void main(String[] args) {
        SriWulanMargiRahayu_2020804026 obj = new SriWulanMargiRahayu_2020804026("Sri Wulan Margi Rahayu","2020804026");
        System.out.println("Nama = " + obj.nama +" ; NIM = "+ obj.kodekaryawan);
        
    }
}