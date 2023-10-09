public class StringArrayTest {
    public static List<String> generateStringArray(Integer arrayLength){
        List<String> lst = new List<String>();
        for(Integer i=0;i<arrayLength;i++) {
            String val = 'Test ' + i;
            lst.add(val);
        }
        return lst;
	}
}