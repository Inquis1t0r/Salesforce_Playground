/**
 * Implementacja sortowania bąbelkowego w języku Apex
 * @param arr tablica do posortowania
 * @return posortowana tablica
 */
public class BubbleSort {
    /**
     * Metoda wykonująca sortowanie bąbelkowe na podanej tablicy.
     * @param arr tablica do posortowania
     * @return posortowana tablica
     *
     * Złożoność czasowa: O(n^2)
     * Złożoność pamięciowa: O(1)
     */
    public static void bubbleSort(Integer[] arr) {
        Integer n = arr.size();
        Boolean swapped;
        for(Integer i=0; i<n-1; i++) {
            swapped = false;
            for(Integer j=0; j<n-i-1; j++) {
                if(arr[j] > arr[j+1]) {
                    Integer temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                    swapped = true;
                }
            }
            if(!swapped) {
                break;
            }
        }
    }
}
