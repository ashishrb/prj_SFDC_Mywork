global class batchClass implements Database.batchable<sObject>{ 
   global Database.QueryLocator start(Database.BatchableContext bc){ 
       return DataBase.getQueryLocator('Select Id, Name, NumberOfEmployees from Account'); 
   }     
   global void execute(Database.BatchableContext info, List<Account> scope){
       List<Account> accsToUpdate = new List<Account>();
       for(Account a : scope){ 
           a.Name = 'Askme and Co'; 
           a.NumberOfEmployees = 70; 
           accsToUpdate.add(a); 
       } 
       insert accsToUpdate; 
   }     
   global void finish(Database.BatchableContext info){     
   } 
}