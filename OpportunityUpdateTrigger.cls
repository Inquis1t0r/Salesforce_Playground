trigger OpportunityUpdateTrigger on Contact (after update) {

    // Get a list of Opportunity IDs related to the updated Contacts
    Set<Id> oppIds = new Set<Id>();
    for(Contact con : Trigger.new) {
        oppIds.addAll([SELECT OpportunityId FROM OpportunityContactRole WHERE ContactId = :con.Id].OpportunityId);
    }
    
    // Query for the related Opportunities and update them
    List<Opportunity> oppsToUpdate = [SELECT Id, StageName, CloseDate FROM Opportunity WHERE Id IN :oppIds];
    for(Opportunity opp : oppsToUpdate) {
        opp.StageName = 'Closed Won';
        opp.CloseDate = Date.today();
    }
    
    // Update the Opportunities
    update oppsToUpdate;
}
