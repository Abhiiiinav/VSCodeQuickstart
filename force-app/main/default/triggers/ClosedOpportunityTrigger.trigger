trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {

    list<Opportunity> opp=new list<Opportunity>;
    for(Integer i=0;i<250;i++){

        Opportunity opp=new Opportunity(Name='sasas',CloseDate=date.valueof('2023-01-17'),StageName='Qualification');
    }
    for(Opportunity oppr:Trigger.New){

        if(oppr.StageName=='Closed Won'){
            
            Task t1=new Task(Subject='Follow Up Test Task',Whatid=oppr.id);

            
        }
    }
}