import java.util.Scanner;

public class Pattern {
    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);
        System.out.print("Enter the number : ");
        int n = in.nextInt();
        for (int i = 0; i < n; i++) {
            int num = n;
            for (int j = 0; j <= i; j++) {
                System.out.print(num-- + " ");
            }
            for (int k = i + 1; k < n; k++) {
                System.out.print(num+1 + " ");
            }
            System.out.println();
        }
    }
}


