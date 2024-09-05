import { MessageContext, subscribe, unsubscribe } from 'lightning/messageService';
import { LightningElement, wire } from 'lwc';
import nitishMessageChannel from '@salesforce/messageChannel/nitishMessageChannel__c';


export default class SubscriberComponent extends LightningElement {

    name = '';
    subscription = null;

    @wire(MessageContext) messageContext;

    connectedCallback() {
        this.handleSubscribe();
    }
    disconnectedCallback() {
        this.handleUnSubscribe();
    }
    handleSubscribe() {
        if (!this.subscription) {
            this.subscription = subscribe(this.messageContext, nitishMessageChannel,
                (parameter) => {
                    this.name = parameter.name;
                }
            );
        }
    }
    handleUnSubscribe() {
        unsubscribe(this.subscription);
        this.subscription = null;



    }



}