global class apxTestClass implements Database.batchable<Account> {
    global apxTestClass(){}
    
    global List<Account> start(Database.BatchableContext bc){
        System.debug('Completed the start');
        return [select Id, Name from Account];
    }
    
    global void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('Execcuting execute()');
        List<string> acnt_list = new List<string>();
        for(Account acnt : scope){
            if(acnt.Name <> ''){
                acnt_list.add(acnt.Name);
            }
        }
        System.debug('This is 1st');
        System.debug(acnt_list.size());
    }
    
    global void finish(Database.BatchableContext bc){
        System.debug('This is 1st');
    }
}