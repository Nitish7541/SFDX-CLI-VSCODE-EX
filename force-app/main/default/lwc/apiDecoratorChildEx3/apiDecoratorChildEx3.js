import { LightningElement, api } from 'lwc';

export default class ApiDecoratorChildEx3 extends LightningElement {

    @api hello = 'new world';
}