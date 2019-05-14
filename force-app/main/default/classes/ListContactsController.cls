public with sharing class ListContactsController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        return [SELECT FirstName, LastName, Email FROM Contact];
    }
}
