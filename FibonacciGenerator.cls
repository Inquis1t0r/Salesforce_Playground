public class FibonacciGenerator {
    
    // Metoda zwracająca ciąg Fibonacciego dla podanej wartości parametru
    public static List<Integer> generateFibonacciSequence(Integer n) {
        List<Integer> sequence = new List<Integer>();
        
        // Dodajemy pierwsze dwa elementy ciągu
        sequence.add(0);
        sequence.add(1);
        
        // Generujemy resztę ciągu
        for (Integer i = 2; i < n; i++) {
            Integer nextFibonacciNumber = sequence[i-1] + sequence[i-2];
            sequence.add(nextFibonacciNumber);
        }
        
        return sequence;
    }
}
