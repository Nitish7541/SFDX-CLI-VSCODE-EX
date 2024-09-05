import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, api, wire } from 'lwc';

export default class WireDecoratorEx1 extends LightningElement {


    @api recordId;

    @wire(getRecord, { recordId: '$recordId', fields: ['account.name', 'account.phone'] })
    accounts;

    get getName() {
        return getFieldValue(this.accounts.date)
    }

}