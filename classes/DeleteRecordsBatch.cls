Global class DeleteRecordsBatch Implements Database.batchable<sobject>{
    global final string query;
    global DeleteRecordsBatch(string q){
        query=q;
    }
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext BC, List<sObject> scope){
        delete scope;
    }
    
    public void finish(Database.BatchableContext BC){
        system.debug('deletion debug');
    }
}