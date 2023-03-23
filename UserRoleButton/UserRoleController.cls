public class UserRoleController {
    @AuraEnabled
    public static Boolean checkUserRole() {
        Boolean isSystemAdmin = false;
        String userProfileName = [SELECT Profile.Name FROM User WHERE Id =: UserInfo.getUserId()].Profile.Name;
        if (userProfileName == 'System Administrator') {
            isSystemAdmin = true;
        }
        return isSystemAdmin;
    }
}
