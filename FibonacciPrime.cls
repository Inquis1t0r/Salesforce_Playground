public class FibonacciPrime {
    public static void printFibonacciPrime(Integer n) {
        Integer a = 0;
        Integer b = 1;
        Integer c;
        Set<Integer> primes = new Set<Integer>{2};
        while (a <= n) {
            if (a > 1 && isPrime(a, primes)) {
                System.debug(a);
            }
            c = a + b;
            a = b;
            b = c;
            if (isPrime(b, primes)) {
                System.debug(b);
            }
        }
    }
    
    private static Boolean isPrime(Integer num, Set<Integer> primes) {
        if (primes.contains(num)) {
            return true;
        }
        for (Integer i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false;
            }
        }
        primes.add(num);
        return true;
    }
}
