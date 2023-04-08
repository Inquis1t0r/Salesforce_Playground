public class myController {
    @AuraEnabled
    public static void updateRecordWithFields(String recordId, String field1, Integer field2, Boolean field3, Date field4, String field5) {
        MyObject__c recordToUpdate = new MyObject__c();
        recordToUpdate.Id = recordId;
        recordToUpdate.Field1__c = field1;
        recordToUpdate.Field2__c = field2;
        recordToUpdate.Field3__c = field3;
        recordToUpdate.Field4__c = field4;
        recordToUpdate.Field5__c = field5;

        update recordToUpdate;
    }
}
