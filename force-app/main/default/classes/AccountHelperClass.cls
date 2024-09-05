public with sharing class AccountHelperClass {

    @AuraEnabled
    public static List<Account> getAccountList(){
        try {
            return [select name,phone from account];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    
}