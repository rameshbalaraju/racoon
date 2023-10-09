trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    //if(Trigger.isAfter == true && (Trigger.isInsert == true || Trigger.isUpdate == true)){
        
        List<Opportunity> opportunities = [Select Id from Opportunity where StageName = 'Closed Won'];
        List<Task> taskList = new List<Task>();
        for(Opportunity opp: opportunities){
            Task tsk = new Task();
            tsk.Subject = 'Follow Up Test Task';
            tsk.WhatId = opp.id;
            taskList.add(tsk);
        }
        insert taskList;
    //}
    
}