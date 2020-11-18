import { LightningElement } from 'lwc';
import getContacts from "@salesforce/apex/soapServiceExecution.getContacts";


const columns = [
    { label: 'FirstName', fieldName: 'FirstName' },
    { label: 'LastName', fieldName: 'LastName'},
    { label: 'FullName', fieldName: 'FullName'},
];

export default class SoapServiceContacts extends LightningElement {

    data = [];
    columns = columns;

        doCallout() {
        getContacts()
            .then(result => {
                this.data = result;
                console.log('got data');
                console.log(JSON.stringify(result));
            })
            .catch(error => {
                this.error = error;
            });
    }
}