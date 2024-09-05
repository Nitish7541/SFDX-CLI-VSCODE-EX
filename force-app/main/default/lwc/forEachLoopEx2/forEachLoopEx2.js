import { LightningElement } from 'lwc';

export default class ForEachLoopEx2 extends LightningElement {

    employeeList = [

        {
            fName: 'rohit',
            lName: 'sharma',
            age: 37,
            City: 'mumbai'
        },
        {
            fName: 'rohit2',
            lName: 'sharma2',
            age: '372',
            City: 'mumbai2'
        },
        {
            fName: 'rohit3',
            lName: 'sharma3',
            age: '373',
            City: 'mumbai3'
        }


    ]



}