import { LightningElement, track } from 'lwc';

export default class TrackDecoratorEx5 extends LightningElement {

    @track numberproperty = 0;

    increase() {
        this.numberproperty++;
    }

    decrease() {
        this.numberproperty--;
    }

}