public with sharing class SUSHIL_ContactListView {
    

 public static Id conRecId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Strategic').getRecordTypeId();
      @AuraEnabled
    public static List<Contact> getAccount(){

       // List<Contact> contactList = [SELECT Id, Name, AccountId, Account_Name__c, AcctType__c, Contact_Level__c, Title, Email,MailingAddressText__c, Phone FROM Contact where RecordTypeId =:conRecId and Marked_for_Deletion__c=false limit 1000];
       
       List<Contact> contactList = [SELECT Id, Name, Phone, Email FROM Contact WHERE RecordTypeId =:conRecId limit 50];
        return contactList;
        
    }

     @AuraEnabled
    public static Boolean getProfiles(){
        User u = [Select id,profile.Name from user where Id=: UserInfo.getUserId()];
        Boolean flag=false;
        List<String> str= new List<String>();
        if( u.Profile.Name == 'NBCU Marketing' ||u.Profile.Name == 'CFS' || u.Profile.Name == 'System Administrator' || u.Profile.Name == 'Portfolio Sales Marketing' || u.Profile.Name == 'NBCU Management' || u.Profile.Name == 'NBCU Linear AE'|| u.Profile.Name == 'NBCU Digital AE' || u.Profile.Name == 'NBCU Digital Global: Executive Team' || u.Profile.Name == 'CP' || u.Profile.Name == 'AdSmart' || u.Profile.Name =='Content Commerce')
        
        flag=true;
        return flag;
    }    

      @AuraEnabled
    public static List<Contact> getFilterType( String cName ){
                String name = '%'+cName+'%';
          List<Contact> accountList = [SELECT Id, Name, Phone, Email FROM Contact where Phone LIKE : name limit 50];
        System.debug('Test : '+accountList);
        return accountList;
    }    
}