package dk.lb.micro.gradletest;

public class GradleApp {

    public static void main(String[] args){
        StringBuilder sb=new StringBuilder();
        for(String arg:args){
            if(sb.length()!=0)sb.append(' ');
            sb.append(arg);
        }
        System.out.println("Gradle hej "+ sb);
    }
}
