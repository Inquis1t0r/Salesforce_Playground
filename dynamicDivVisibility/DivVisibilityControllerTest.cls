@isTest
private class DivVisibilityControllerTest {

    @isTest
    static void testGetDivVisibilitySettings() {
        // Test positive scenario
        DivSettings__mdt divSetting = new DivSettings__mdt(DivName__c = 'firstDiv', IsVisible__c = true);
        insert divSetting;

        List<String> divNames = new List<String>{ 'firstDiv' };
        Map<String, Boolean> result = DivVisibilityController.getDivVisibilitySettings(divNames);
        System.assertEquals(true, result.get('firstDiv'));

        // Test negative scenario
        divNames = new List<String>{ 'nonExistentDiv' };
        result = DivVisibilityController.getDivVisibilitySettings(divNames);
        System.assert(result.isEmpty());
    }
}
