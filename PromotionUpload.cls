public class PromotionUpload {
    
    public static void uploadPromotions(List<String> csvFileLines) {
        
        List<Promotion__c> promotionsToInsert = new List<Promotion__c>();
        
        for(String line : csvFileLines) {
            
            String[] fields = line.split(',');
            
            Promotion__c promotion = new Promotion__c();
            promotion.Name = fields[0];
            promotion.Description__c = fields[1];
            promotion.Start_Date__c = Date.valueOf(fields[2]);
            promotion.End_Date__c = Date.valueOf(fields[3]);
            promotion.Discount__c = Decimal.valueOf(fields[4]);
            promotion.Product__c = fields[5];
            
            promotionsToInsert.add(promotion);
        }
        
        insert promotionsToInsert;
    }
}
