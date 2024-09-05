import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, api, wire } from 'lwc';

export default class WierDecoratorEx6 extends LightningElement {

    @api recordId

    @wire(getRecord, { recordId: '$recordId', fields: ['Contact.LastName', 'Contact.Phone'] })
    ContactsList;

    get getLastName() {
        if (this.ContactsList.data)
            return getFieldValue(this.ContactsList.data, 'Contact.LastName');
        else if (this.ContactsList.error)
            return this.ContactsList.error;

    }
    get getPhone() {
        if (this.ContactsList.data)
            return getFieldValue(this.ContactsList.data, 'Contact.Phone');
        else if (this.ContactsList.error)
            return this.ContactsList.error;

    }

}