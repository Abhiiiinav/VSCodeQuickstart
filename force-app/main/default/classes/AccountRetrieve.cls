public with sharing class AccountRetrieve {
    public static void acc() {

        //WITH SECURITY_ENFORCED best practice to include this at last of query
        // try without this and u will see warnings
        // even though the query will run
        Account a=[select Id,Name from Account limit 1 WITH SECURITY_ENFORCED];

        a.name='updated account';
        update(a);


    }
}