public with sharing class SalesDashboardController {
    @AuraEnabled
    public static List<Region__c> getRegions() {
        return [SELECT Id, Name FROM Region__c];
    }

    @AuraEnabled
    public static SalesData getRegionData(Id regionId) {
        SalesData data = new SalesData();
        data.salesByCategory = [SELECT Category__c, SUM(Amount__c) amount FROM Sale__c WHERE Region__c = :regionId GROUP BY Category__c];
        data.salesByProduct = [SELECT Product__c, SUM(Amount__c) amount FROM Sale__c WHERE Region__c = :regionId GROUP BY Product__c];
        data.salesByMonth = [SELECT CALENDAR_MONTH(Date__c), SUM(Amount__c) amount FROM Sale__c WHERE Region__c = :regionId GROUP BY CALENDAR_MONTH(Date__c)];
        return data;
    }

    public class SalesData {
        @AuraEnabled public List<SalesByCategory> salesByCategory;
        @AuraEnabled public List<SalesByProduct> salesByProduct;
        @AuraEnabled public List<SalesByMonth> salesByMonth;
    }

    public class SalesByCategory {
        @AuraEnabled public String category;
        @AuraEnabled public Decimal amount;
    }

    public class SalesByProduct {
        @AuraEnabled public String product;
        @AuraEnabled public Decimal amount;
    }

    public class SalesByMonth {
        @AuraEnabled public String month;
        @AuraEnabled public Decimal amount;
    }
}
