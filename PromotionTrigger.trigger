trigger PromotionTrigger on Promotion__c (before insert, before update) {

    for (Promotion__c newPromotion : Trigger.new) {

        // Check if there is an existing promotion with the same timespan
        List<Promotion__c> existingPromotions = [SELECT Id FROM Promotion__c
                                                 WHERE Start_Date__c <= :newPromotion.End_Date__c
                                                 AND End_Date__c >= :newPromotion.Start_Date__c
                                                 AND Id != :newPromotion.Id];

        if (!existingPromotions.isEmpty()) {
            newPromotion.addError('A promotion already exists within this timespan.');
        }
    }
}
