public class clsTesQue implements Queueable {
    public void execute(QueueableContext QC){
        List<Account> CurrentAccount = [Select Id, Name from Account];
        List<Account> acnt = new List<Account>();
        
        for(Account a : CurrentAccount){
            if(a.Name == '' || a.Name == NULL){
                a.Name = a.Name + 'Adde Suffix';
                System.debug(a.Name);
            }
        acnt.add(a);
        }
        DataBase.SaveResult[] sr = DataBase.update(acnt);
    }
}