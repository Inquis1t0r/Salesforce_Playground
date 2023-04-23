// OpportunityController.apxc
public with sharing class OpportunityController {
    @AuraEnabled
    public static List<Opportunity> getOpportunities() {
        // Retrieve Opportunities and their related objects
        List<Opportunity> opportunities = [SELECT Id, Name, Account.Name, CloseDate, StageName,
                                           (SELECT Id, Name FROM Related_Object__r)
                                           FROM Opportunity];
        return opportunities;
    }
}
