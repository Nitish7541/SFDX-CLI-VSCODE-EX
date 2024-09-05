trigger addressTrg on Account (before Insert,before Update)
{
if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate))
{
if(!trigger.new.isEmpty())
{
for(Account acc : trigger.new)
{
if(acc.BillingStreet != null || acc.BillingState != null || acc.BillingPostalCode != null ||
acc.BillingCountry != null || acc.BillingCity != null)
{
acc.ShippingStreet = acc.BillingStreet;
acc.ShippingState = acc.BillingState;
acc.ShippingPostalCode = acc.BillingPostalCode;
acc.ShippingCountry = acc.BillingCountry;
acc.ShippingCity = acc.BillingCity;
}
}
}
}
}

/*
 * Your Company wants to ensure that the shipping address of an Account record is always in sync with the billing address
 */