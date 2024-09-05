import { LightningElement } from 'lwc';

export default class DataBindingEx3 extends LightningElement {

    function1 = {

        fName: 'ss',
        lName: 'gattamaneni',
        age: 100,
        city: 'slpt'
    }

    get getRankProperty() {
        const rank = this.function1.age >= 50 ? 'First' : this.function1.age >= 30 ? 'Second' : 'Three';
        return rank;
    }

}