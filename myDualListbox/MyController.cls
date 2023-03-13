public class MyController {
    @AuraEnabled
    public static List<String> getOptions() {
        // Retrieve options from Salesforce database
        List<String> options = new List<String>();
        options.add('Option 1');
        options.add('Option 2');
        options.add('Option 3');
        options.add('Option 4');
        options.add('Option 5');
        return options;
    }
}
