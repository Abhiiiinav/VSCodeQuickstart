@isTest
public with sharing class MYtestclass {
    @isTest
    public static void startStopTestMethod(){
        for(Integer i=0;i<149;i++){
            insert new Account(name='TestAccount'+i);
        }
        //insert new Account(name='TestAccount151');
        Test.startTest();//Governor limit reset to 0
         for(Integer i=0;i<150;i++){
            insert new Account(name='SampleAccount'+i);
        }
        Test.stopTest();//Governor limit back to maximum 150
    }
}
