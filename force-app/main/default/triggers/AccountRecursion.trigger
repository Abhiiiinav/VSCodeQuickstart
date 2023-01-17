trigger AccountRecursion on Account (before insert) {

    if(StaticVAr.p==True){
        
        StaticVAr.p=False;
        Account a=new Account(name='TriggerAccount');
        insert a;
    }
    

}