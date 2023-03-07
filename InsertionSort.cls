/**
 * Implementacja sortowania przez wstawianie w języku Apex
 * @param arr tablica do posortowania
 * @return posortowana tablica
 */
public class InsertionSort {
    /**
     * Metoda wykonująca sortowanie przez wstawianie na podanej tablicy.
     * @param arr tablica do posortowania
     * @return posortowana tablica
     *
     * Złożoność czasowa: O(n^2)
     * Złożoność pamięciowa: O(1)
     */
    public static void insertionSort(Integer[] arr) {
        Integer n = arr.size();
        for(Integer i=1; i<n; i++) {
            Integer key = arr[i];
            Integer j = i-1;
            while(j >= 0 && arr[j] > key) {
                arr[j+1] = arr[j];
                j = j-1;
            }
            arr[j+1] = key;
        }
    }
}
