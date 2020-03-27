public class Demo {
    public List<Account> displayAccountRevenu(){
        List<Account> accList = [SELECT AnnualRevenue, name FROM Account];
        return accList;
        
    }
}