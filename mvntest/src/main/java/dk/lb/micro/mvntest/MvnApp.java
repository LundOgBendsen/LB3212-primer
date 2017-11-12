package dk.lb.micro.mvntest;


public class MvnApp {

    public static void main(String[] args){
        String msg=args.length==0?"":(args.length==1?args[0]:(args[0]+" "+args[1]));
        System.out.println("Hej "+ msg);
    }
}
