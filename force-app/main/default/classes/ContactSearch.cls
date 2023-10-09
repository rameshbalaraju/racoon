public class ContactSearch {
    public static List<Contact> searchForContacts(string lastName, string postalCode){
        List<Contact> listContacts = [SELECT id,LastName FROM Contact where lastName like :lastName and MailingPostalCode = :postalCode];
        return listContacts;
    }
}