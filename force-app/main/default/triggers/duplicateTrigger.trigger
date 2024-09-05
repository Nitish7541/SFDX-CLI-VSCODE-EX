trigger duplicateTrigger on Account (before Insert, before Update) {
Set<String> accNames = new Set<String>();

if (trigger.isBefore && (trigger.isInsert || trigger.isUpdate)) {
if (!trigger.new.isEmpty()) {
for (Account acc : trigger.new) {
accNames.add(acc.Name);
}
}
}

List<Account> accList = [SELECT Id, Name FROM Account WHERE Name IN :accNames];

Map<String, Account> existingAccMap = new Map<String, Account>();

if (!accList.isEmpty()) {
for (Account accObj : accList) {
existingAccMap.put(accObj.Name, accObj);
}
}

if (!trigger.new.isEmpty()) {
for (Account existingAcc : trigger.new) {
if (existingAccMap.containsKey(existingAcc.Name)) {
existingAcc.addError('Account name already exists');
}
}
}
}

/*
 * Your company wants to ensure that all accounts in their system have unique names.
 *  This can help avoid confusion and ensure that data is accurately attributed to the correct account. 
 * For example, in a CRM system used by a sales team, 
 * duplicate account names can lead to issues when trying to track sales activities and opportunities for each account.
 * */