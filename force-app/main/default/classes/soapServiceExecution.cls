public with sharing class soapServiceExecution {
    @AuraEnabled
    public static List<soapServiceExecution.contactWrapper> getContacts(){
    soapService.ContactsPortSoap11 service = new soapService.ContactsPortSoap11();
    String querystring = 'John Smith';
    service.endpoint_x = ('callout:soapService');
    soapService.getContactResponse_element res = service.getContact(querystring);
    system.debug('res: ' +res);
    List<contactWrapper> conList = new List<contactWrapper>();
    contactWrapper con = new contactWrapper();
    con.FirstName = res.Contact.FirstName;
    con.LastName = res.Contact.LastName;
    con.FullName = res.Contact.FullName;
    conList.add(con);

    return conList;
}

public Class contactWrapper{
    @AuraEnabled
    public String FirstName;
    @AuraEnabled
    public String LastName;
    @AuraEnabled
    public String FullName;

}
}
