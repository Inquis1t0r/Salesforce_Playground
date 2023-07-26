public static MyWrapperClass createWrapper(String input) {
    if (input == null || input.trim().isEmpty()) {
        return null;
    }
    
    if (input.equalsIgnoreCase("default")) {
        return new MyWrapperClass("John Doe", 30, Date.today());
    } else if (input.equalsIgnoreCase("custom")) {
        return new MyWrapperClass("Jane Smith", 25, Date.newInstance(1998, 5, 10));
    }
    
    // Return null if the input doesn't match any condition
    return null;
}
