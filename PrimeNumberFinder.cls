public class PrimeNumberFinder {
    public static void findClosestPrime(Integer number) {
        Integer lower = number - 1;
        Integer upper = number + 1;
        while (!isPrime(lower) && !isPrime(upper)) {
            lower--;
            upper++;
        }
        if (isPrime(lower)) {
            System.debug(lower);
        } else {
            System.debug(upper);
        }
    }
    
    private static Boolean isPrime(Integer number) {
        if (number <= 1) {
            return false;
        }
        for (Integer i = 2; i <= Math.sqrt(number); i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }
}
