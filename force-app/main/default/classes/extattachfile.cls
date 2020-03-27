public class extattachfile {
  	Public attachment objAttachment{get; set;}
    Public Documentasdasd__c objApplicant{get; set;}
    Public Account acc{get; set;}
    
    Public extattachfile(apexpages.standardcontroller stdCon){
        objAttachment = new Attachment();
        objApplicant = new Documentasdasd__c();
        acc = new Account();
    }
    Public void saveApplicant(){
        insert objApplicant;
       objApplicant.Account__c = acc.Id;
        update objApplicant;
        objAttachment.ParentId = objApplicant.Id;
        
        insert objAttachment;
        
    }
}



/*
 * WORKING*****
 * 
  public class extattachfile {
  Public attachment objAttachment{get; set;}
    Public Documentasdasd__c objApplicant{get; set;}
    Public extattachfile(apexpages.standardcontroller stdCon){
        objAttachment = new Attachment();
        objApplicant = new Documentasdasd__c();
    }
    Public void saveApplicant(){
        insert objApplicant;
       
        objAttachment.ParentId = objApplicant.Id;
        insert objAttachment;
    }
}

*/