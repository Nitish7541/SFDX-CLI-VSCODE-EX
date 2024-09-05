import { LightningElement } from 'lwc';

export default class ConditionRenderEx1 extends LightningElement {

    flags = false;

    statusChanged(event) {
        this.flags = event.target.checked;
    }





}