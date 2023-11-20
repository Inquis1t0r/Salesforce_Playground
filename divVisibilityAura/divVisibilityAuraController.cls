public with sharing class divVisibilityAuraController {
    public static Boolean getIsDivVisible(String metadataRecordName) {
        DivVisibilitySettings__mdt settings = [SELECT IsDivVisible__c FROM DivVisibilitySettings__mdt WHERE DeveloperName = :metadataRecordName LIMIT 1];
        return settings != null ? settings.IsDivVisible__c : false;
    }
}
