import { LightningElement } from 'lwc';
import childComponent from 'c/childComponent';

export default class ParentComponent extends LightningElement {
    // Declare a property to hold the child component's instance
    childComponentInstance;

    // Handle any initialization or logic for the parent component

    // Method to handle child component initialization
    handleChildComponentLoad(event) {
        this.childComponentInstance = event.detail;
    }

    // Handle any other parent component logic or interactions
}
