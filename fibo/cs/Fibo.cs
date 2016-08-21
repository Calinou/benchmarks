using System;

public class Fibo {
    public static int fibo(int n) {
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            return fibo(n - 2) + fibo(n - 1);
        }
    }

    public static void Main(string[] args) {
        Console.WriteLine(fibo(40));
    }
}
