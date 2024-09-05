import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, api, wire } from 'lwc';

export default class WireDecorator7 extends LightningElement {

    @api recordId

    @wire(getRecord, { recordId: '$recordId', fields: ['Contact.LastName', 'Contact.Phone'] }) Contacts1

    get getLastName() {
        if (this.Contacts1.data)
            return getFieldValue(this.Contacts1.data, 'Contact.LastName')
        else if (this.Contacts1.error)
            return error;
    }

    get getPhone() {
        if (this.Contacts1.data)
            return getFieldValue(this.Contacts1.data, 'Contact.Phone')
        else if (this.Contacts1.error)
            return error;
    }

}