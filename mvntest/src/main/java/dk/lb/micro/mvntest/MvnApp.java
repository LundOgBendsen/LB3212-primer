package dk.lb.micro.mvntest;


public class MvnApp {

    public static void main(String[] args){
        StringBuilder sb=new StringBuilder();
        for(String arg:args){
            if(sb.length()!=0)sb.append(' ');
            sb.append(arg);
        }
        System.out.println("Hej "+ sb);
    }
}
