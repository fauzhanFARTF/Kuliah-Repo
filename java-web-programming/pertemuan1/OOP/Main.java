class Yoga_Juliyana2020804048{
    String nmkrywan, kdkrywan;
    Yoga_Juliyana2020804048(String NMKrywan, String KDKrywan){
        nmkrywan = NMKrywan; 
        kdkrywan = KDKrywan;
        System.out.println(nmkrywan); 
        System.out.println(kdkrywan);
        int nmr = 48;
        while (nmr<=88){
                System.out.print(nmr+";");
                nmr+=1;
        }
    }
}
public class Main {
    public static void main(String[] args) {
        Yoga_Juliyana2020804048 object = new Yoga_Juliyana2020804048("Yoga Juliyana","2020804048");
        System.out.println("");
        System.out.println(object.nmkrywan);
        System.out.println(object.kdkrywan);
        
    }
}