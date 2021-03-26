public with sharing class KeyContactsController {
	@AuraEnabled
    public static List<Key_Contacts__c> getKeyContacts(){
        return [select name,Phone__c,Timing__c,Email__c from Key_Contacts__c];
    }
}