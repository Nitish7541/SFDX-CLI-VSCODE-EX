import { LightningElement, track } from 'lwc';

export default class TrackDecoratorEx8 extends LightningElement {

    @track number = 0;

    increase() {
        this.number++;

    }
    decrease() {
        this.number--;
    }

}