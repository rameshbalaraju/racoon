public class LeadProcessor implements Database.Batchable<sObject>{

    public Database.QueryLocator start(Database.BatchableContext bc) {        
        return Database.getQueryLocator('Select Id, LeadSource from Lead');
    }
    
    public void execute(Database.BatchableContext bc, List<Lead> scope){
        List<Lead> leads = new List<Lead>();
        for(Lead ld: scope){
            ld.LeadSource = 'Dreamforce';
            leads.add(ld);
        }
        update leads;
    }
    
    public void finish(Database.BatchableContext bc){
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        System.debug(job.Status);
    }
}