import java.util.Scanner;

public class Purchase {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the Amount:");
        int amount = sc.nextInt();
        if(amount>=500 && amount<=1000) {
            int a  = amount-((amount / 100) *10);
            System.out.println("After applying 10% discount :" + a);
        } else if (amount>1000) {
            int b  = amount-((amount / 100) *20);
            System.out.println("After applying  20% discount :" + b);
        } else if (amount<500) {
            System.out.println("No discount is applied");
        }
    }
}

