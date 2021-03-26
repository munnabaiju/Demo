trigger AccountTrigger on Account (after insert) {
    For(Account a: Trigger.new) {
        if(a.Name == 'Baiju') {
            a.addError('Name cannot be Munna_Trigger');
        }
    }
}