public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numContacts, String firstName){
        List<Contact> cnts = new List<Contact>();
        for (Integer i = 0; i < numContacts; i++) {
            Contact cnt = new Contact();
            cnt.FirstName = firstName + ' ' + i;
            cnts.add(cnt);
        }
        //insert cnts;
		return cnts;    
    }
}