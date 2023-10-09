public class DailyLeadProcessor implements Schedulable {

    public void execute(SchedulableContext ctx){
        
        List<Lead> leads = [Select Id from Lead where LeadSource = ''];
        List<Lead> updatedLeads = new List<Lead>();
        for(Lead lead: leads){
            lead.LeadSource = 'Dreamforce';
            updatedLeads.add(lead);
        }
        
        update updatedLeads;
    }
    
}