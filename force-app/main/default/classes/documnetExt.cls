public class documnetExt {     
 public documnetExt(ApexPages.StandardController controller) 
 {       
  Document d = (Document) controller.getRecord();        
  d.folderid = UserInfo.getUserId(); //this puts it in My Personal Documents    
   }           
         }