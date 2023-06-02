public class SObjectAggregator {
    public static Object[] aggregateSObjectFields(List<SObject> records) {
        Integer sumField1 = 0;
        Decimal sumField2 = 0.0;
        String concatenatedField3 = '';

        for (SObject record : records) {
            // Aggregate values from Field1__c
            if (record.get('Field1__c') instanceof Integer) {
                sumField1 += (Integer)record.get('Field1__c');
            }

            // Aggregate values from Field2__c
            if (record.get('Field2__c') instanceof Decimal) {
                sumField2 += (Decimal)record.get('Field2__c');
            }

            // Aggregate values from Field3__c
            if (record.get('Field3__c') instanceof String) {
                concatenatedField3 += (String)record.get('Field3__c');
            }
        }

        // Create an array of the aggregated variables
        Object[] result = new Object[]{ sumField1, sumField2, concatenatedField3 };
        return result;
    }
}
