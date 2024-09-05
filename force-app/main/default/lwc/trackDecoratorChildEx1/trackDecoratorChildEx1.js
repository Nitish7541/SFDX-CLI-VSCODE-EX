import { LightningElement, track } from 'lwc';

export default class TrackDecoratorChildEx1 extends LightningElement {


    @track counter = 0;

    increment() {
        this.counter++;
    }

    decrement() {
        this.counter--;
    }
}