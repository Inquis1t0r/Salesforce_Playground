/**
 * Implementacja sortowania przez wybieranie w języku Apex
 * @param arr tablica do posortowania
 * @return posortowana tablica
 */
public class SelectionSort {
    /**
     * Metoda wykonująca sortowanie przez wybieranie na podanej tablicy.
     * @param arr tablica do posortowania
     * @return posortowana tablica
     *
     * Złożoność czasowa: O(n^2)
     * Złożoność pamięciowa: O(1)
     */
    public static void selectionSort(Integer[] arr) {
        Integer n = arr.size();
        for(Integer i=0; i<n-1; i++) {
            Integer min_idx = i;
            for(Integer j=i+1; j<n; j++) {
                if(arr[j] < arr[min_idx]) {
                    min_idx = j;
                }
            }
            Integer temp = arr[min_idx];
            arr[min_idx] = arr[i];
            arr[i] = temp;
        }
    }
}
