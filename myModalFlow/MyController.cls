public with sharing class MyController {
    
    @AuraEnabled
    public static void myFlow(List<Flow.InputVariable> inputVariables) {
        // Create a new instance of the autolaunched flow
        Flow.Interview.MyAutolaunchedFlow flow = new Flow.Interview.MyAutolaunchedFlow(inputVariables);
        
        // Start the autolaunched flow
        flow.start();
    }
    
}
