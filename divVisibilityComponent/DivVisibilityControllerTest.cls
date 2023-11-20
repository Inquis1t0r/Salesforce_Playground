@isTest
private class DivVisibilityControllerTest {
    
    @isTest
    static void testGetIsDivVisible() {
        // Create a test Custom Metadata record
        DivVisibilitySettings__mdt testSettings = new DivVisibilitySettings__mdt(
            DeveloperName = 'TestRecord',
            IsDivVisible__c = true
        );
        insert testSettings;

        // Test getting the visibility for the created record
        Boolean isDivVisible = DivVisibilityController.getIsDivVisible('TestRecord');
        System.assertEquals(true, isDivVisible, 'Expected div to be visible for the test record');
        
        // Test getting the visibility for a non-existing record
        isDivVisible = DivVisibilityController.getIsDivVisible('NonExistingRecord');
        System.assertEquals(false, isDivVisible, 'Expected div to be hidden for a non-existing record');
    }
}
