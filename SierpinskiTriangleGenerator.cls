public class SierpinskiTriangleGenerator {
    
    // Define the base case
    private static final String[] BASE = new String[] {'*', '*', '*'};
    
    // Define the recursive case
    public static void generate(int depth) {
        String[] triangle = BASE;
        for (int i = 0; i < depth; i++) {
            String[] newTriangle = new String[triangle.length * 2 + 1];
            for (int j = 0; j < newTriangle.length; j++) {
                if (j % 2 == 0) {
                    newTriangle[j] = '*';
                } else {
                    newTriangle[j] = ' ';
                }
            }
            for (int j = 0; j < triangle.length; j++) {
                int index = j * 2 + 1;
                newTriangle[index - 1] = triangle[j];
                newTriangle[index + 1] = triangle[j];
            }
            triangle = newTriangle;
        }
        for (String line : triangle) {
            System.debug(line);
        }
    }
}
