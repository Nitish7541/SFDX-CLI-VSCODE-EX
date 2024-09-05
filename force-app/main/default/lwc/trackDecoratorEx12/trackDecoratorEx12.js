import { LightningElement, track } from 'lwc';

export default class TrackDecoratorEx12 extends LightningElement {

    @track number = 0;

    increase() {
        this.number++;
    }

    decrease() {
        this.number--;
    }



}