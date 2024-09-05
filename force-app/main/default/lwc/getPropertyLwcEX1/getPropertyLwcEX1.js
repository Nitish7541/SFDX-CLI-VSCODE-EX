import { LightningElement } from 'lwc';

export default class GetPropertyLwcEX1 extends LightningElement {

    employee = {

        age: 299


    }

    get ageOfRank() {
        const rank = this.employee.age >= 50 ? 'ONE' : this.employee.age >= 30 ? 'TWO' : 'THREE';
        return rank;
    }

}