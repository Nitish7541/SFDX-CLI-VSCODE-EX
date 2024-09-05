trigger phoneFieldTrg on Account (before Insert)
{
if(trigger.isBefore && trigger.isInsert)
{
if(!trigger.new.isEmpty())
{
for(Account acc : trigger.new)
{
if(acc.Phone == null || acc.Phone == '')
{
acc.addError('You cannot insert account with phone field empty');
}
}
}
}
}




/*
 * Your company wants to ensure that all new Account records have a valid phone number before they are inserted into the system. 
 * This could be important for organizations that rely heavily 
 * on phone communication with their customers or need to keep accurate contact information for compliance purposes.
 * 
 */