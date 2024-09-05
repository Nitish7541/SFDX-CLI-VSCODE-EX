import { LightningElement } from 'lwc';

export default class GetPropertyLwcEX2 extends LightningElement {

    employee = {

        age: 77
    }



    get getRank2() {
        const rank = this.employee.age >= 50 ? 'ONE' : this.employee.age >= 30 ? 'TWO' : 'THREE';
        return rank;
    }



}