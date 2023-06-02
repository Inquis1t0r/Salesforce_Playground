public with sharing class CustomMetadataController {
    @AuraEnabled(cacheable=true)
    public static Custom_Metadata__mdt getCustomMetadataRecord(String recordId) {
        // Query the custom metadata record
        Custom_Metadata__mdt customMetadata = [
            SELECT Field1__c, Field2__c, Field3__c
            FROM Custom_Metadata__mdt
            WHERE Id = :recordId
            LIMIT 1
        ];

        return customMetadata;
    }
}
