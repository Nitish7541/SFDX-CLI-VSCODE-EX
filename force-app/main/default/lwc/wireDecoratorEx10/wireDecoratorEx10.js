import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, api, wire } from 'lwc';

export default class WireDecoratorEx10 extends LightningElement {







    @api recordId

    @wire(getRecord, { recordId: '$recordId', fields: ['Account.Name', 'Account.Phone'] })
    acclist;

    get getName() {
        if (this.acclist.data)
            return getFieldValue(this.acclist.data, 'Account.Name');
        else if (this.acclist.error)
            return this.acclist.error
    }


    get getPhone() {
        if (this.acclist.data)
            return getFieldValue(this.acclist.data, 'Account.Phone');
        else if (this.acclist.error)
            return this.acclist.error
    }

}