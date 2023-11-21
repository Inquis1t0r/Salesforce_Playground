public class DivVisibilityController {
    public static Map<String, Boolean> getDivVisibilitySettings(List<String> divNames) {
        Map<String, Boolean> divSettingsMap = new Map<String, Boolean>();
        
        // Query custom metadata records for specified div names
        DivSettings__mdt[] divSettings = [SELECT DivName__c, IsVisible__c FROM DivSettings__mdt WHERE DivName__c IN :divNames];
        
        // Populate the map with div name and visibility
        for (DivSettings__mdt setting : divSettings) {
            divSettingsMap.put(setting.DivName__c, setting.IsVisible__c);
        }
        
        return divSettingsMap;
    }
}
