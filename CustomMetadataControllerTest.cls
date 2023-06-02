@isTest
private class CustomMetadataControllerTest {
    @isTest
    static void testGetCustomMetadataRecord() {
        // Create a custom metadata record for testing
        Custom_Metadata__mdt customMetadata = new Custom_Metadata__mdt(
            Field1__c = 'Value1',
            Field2__c = 'Value2',
            Field3__c = 'Value3'
        );
        insert customMetadata;

        // Call the Apex method
        Custom_Metadata__mdt fetchedMetadata = CustomMetadataController.getCustomMetadataRecord(customMetadata.Id);

        // Verify the fetched record
        System.assertEquals(customMetadata.Field1__c, fetchedMetadata.Field1__c);
        System.assertEquals(customMetadata.Field2__c, fetchedMetadata.Field2__c);
        System.assertEquals(customMetadata.Field3__c, fetchedMetadata.Field3__c);
    }
}
