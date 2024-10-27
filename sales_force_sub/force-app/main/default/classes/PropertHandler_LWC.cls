/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-26-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public with sharing class PropertHandler_LWC {

    @AuraEnabled(cacheable=true)
    public static List<Property__c> getProperty(String type, String verified) {
        // Validate Read Access
        if (!Schema.sObjectType.Property__c.isAccessible()) {
            throw new SecurityException('User does not have read access to Property__c.');
        }

        return [SELECT Id, Property_Name__c, Location__c, Type__c, Verified__c 
                FROM Property__c 
                WHERE Type__c = :type AND Verified__c = :verified];
    }

    @AuraEnabled
    public static void createProperty(Property__c property) {
        // Validate Create Access
        if (!Schema.sObjectType.Property__c.isCreateable()) {
            throw new SecurityException('User does not have create access to Property__c.');
        }

        insert property;
    }

    @AuraEnabled
    public static void updateProperty(Property__c property) {
        // Validate Update Access
        if (!Schema.sObjectType.Property__c.isUpdateable()) {
            throw new SecurityException('User does not have update access to Property__c.');
        }

        update property;
    }

    @AuraEnabled
    public static void deleteProperty(Property__c property) {
        // Validate Delete Access
        if (!Schema.sObjectType.Property__c.isDeletable()) {
            throw new SecurityException('User does not have delete access to Property__c.');
        }

        delete property;
    }
}
