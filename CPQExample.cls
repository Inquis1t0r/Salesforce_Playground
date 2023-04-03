public with sharing class CPQExample {

    // Define variables for CPQ Quote and Quote Line Items
    CPQ.Quoting__Quote__c quote;
    List<CPQ.Quoting__QuoteLine__c> quoteLineItems = new List<CPQ.Quoting__QuoteLine__c>();

    public void createQuote() {
        // Instantiate a new CPQ Quote
        quote = new CPQ.Quoting__Quote__c();
        
        // Set required fields for the Quote
        quote.CPQ.Quoting__Account__c = '001XXXXXXXXXXXXXXX'; // replace with account ID
        quote.CPQ.Quoting__Opportunity__c = '006XXXXXXXXXXXXXXX'; // replace with opportunity ID
        quote.CPQ.Quoting__PriceBook__c = '01sXXXXXXXXXXXXXXX'; // replace with price book ID
        
        // Insert the Quote record
        insert quote;
    }

    public void addQuoteLineItem() {
        // Instantiate a new CPQ Quote Line Item
        CPQ.Quoting__QuoteLine__c lineItem = new CPQ.Quoting__QuoteLine__c();
        
        // Set required fields for the Quote Line Item
        lineItem.CPQ.Quoting__Quote__c = quote.Id;
        lineItem.CPQ.Quoting__Product__c = '01tXXXXXXXXXXXXXXX'; // replace with product ID
        lineItem.CPQ.Quoting__Quantity__c = 1;
        
        // Add the Quote Line Item to the list of items
        quoteLineItems.add(lineItem);
    }

    public void saveQuote() {
        // Update the Quote record with the new line items
        quote.CPQ.Quoting__LineItems__r = quoteLineItems;
        update quote;
    }
}
