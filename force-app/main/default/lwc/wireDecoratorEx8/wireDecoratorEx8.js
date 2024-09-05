import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, api, wire } from 'lwc';

export default class WireDecoratorEx8 extends LightningElement {

    @api recordId

    @wire(getRecord, { recordId: '$recordId', fields: ['Opportunity.Name', 'Opportunity.Amount'] })
    oppList;



    get getOppName() {
        if (this.oppList.data)
            return getFieldValue(this.oppList.data, 'Opportunity.Name');
        else if (this.oppList.error)
            return this.oppList.error;

    }
    get getOppAmount() {
        if (this.oppList.data)
            return getFieldValue(this.oppList.data, 'Opportunity.Amount');
        else if (this.oppList.error)
            return this.oppList.error;
    }



}