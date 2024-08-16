import java.util.Scanner;

public class SmallNum {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the first number:");
        int a = sc.nextInt();
        System.out.println("Enter the second number:");
        int b = sc.nextInt();
        System.out.println("Enter the third number:");
        int c = sc.nextInt();
        int min=Math.min(a,Math.min(b,c));
        System.out.println("The smallest number is :"+ min );
    }
}

