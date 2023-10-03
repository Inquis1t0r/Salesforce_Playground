
Schema.DescribeFieldResult F = Account.AccountNumber.getDescribe();
Integer lengthOfField = F.getLength();
System.debug(lengthOfField);

//BillingAddress 
Schema.DescribeFieldResult F = Account.BillingAddress.getDescribe();
Integer lengthOfField = F.getLength();
System.debug(lengthOfField);
