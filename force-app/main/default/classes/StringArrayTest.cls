public class StringArrayTest {
 public static List<String> generateStringArray(Integer n)
    {
       
        List<String> a= new List<String>();
        for(Integer i=0; i<n; i++)
        {
            a.add('Test '+i);
            System.debug(a[i]);
        }
      return a;  
    }
}