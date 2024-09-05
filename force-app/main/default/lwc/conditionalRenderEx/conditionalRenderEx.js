import { LightningElement } from 'lwc';

export default class ConditionalRenderEx extends LightningElement {
    flag = false;
    statusChanged(event) {
        this.flag = event.target.checked;
    }


}