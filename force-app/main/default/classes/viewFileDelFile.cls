public class viewFileDelFile {
public String delId { get; set; }
public String currentRecordId {get;set;}
    public viewFileDelFile(ApexPages.StandardController controller) {
   currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
    }

public void DeleteDoc(){
    system.debug('delId' + delId);
 Documentasdasd__c acc = [select Id from Documentasdasd__c where Id =:delId];
if (acc != null) {
Delete acc;

}
}
}