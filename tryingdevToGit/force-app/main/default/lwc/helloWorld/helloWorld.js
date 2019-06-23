import { LightningElement,track } from 'lwc';

export default class HelloWorld extends LightningElement {
    @track greeting="World";
    changehandler(event){
        this.greeting=event.target.value;
    }
}