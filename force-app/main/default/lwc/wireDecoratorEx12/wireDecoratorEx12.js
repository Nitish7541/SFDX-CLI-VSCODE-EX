import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, api, wire } from 'lwc';

export default class WireDecoratorEx12 extends LightningElement {

    @api recordId

    @wire(getRecord, { recordId: '$recordId', fields: ['Account.Name', 'Account.Phone'] }) accList;

    get getName() {
        if (this.accList.data)
            return getFieldValue(this.accList.data, 'Account.Name');
        else if (this.accList.error)
            return this.acclist.error;
    }




    get getPhone() {
        if (this.accList.data)
            return getFieldValue(this.accList.data, 'Account.Phone');
        else if (this.accList.error)
            return this.acclist.error;
    }



}