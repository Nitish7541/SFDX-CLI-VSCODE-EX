import { LightningElement, track } from 'lwc';

export default class TrackDecoratorEx3 extends LightningElement {

    @track number = 0;

    increase() {
        this.number++;
    }
    decrease() {
        this.number--;
    }



}