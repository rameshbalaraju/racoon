public class AddPrimaryContact implements Queueable{
	
    Contact contact;
    String state;
    public AddPrimaryContact(Contact cnt, String state){
        this.contact = cnt;
        this.state = state;
    }
    
    public void execute(QueueableContext context){
        
        List<Account> accts = [Select Id from Account where BillingState = :this.state limit 200];
        List<Contact> lstContacts = new List<Contact>();
        for( Account acct: accts){
            Contact cloneContact = this.contact.clone();
            cloneContact.AccountId = acct.id;
            lstContacts.add(cloneContact);
        }
        
        insert lstContacts;
    }
}