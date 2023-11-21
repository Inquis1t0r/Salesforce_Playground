// dynamicDivVisibility.js
import { LightningElement, wire } from 'lwc';
import getDivVisibilitySettings from '@salesforce/apex/DivVisibilityController.getDivVisibilitySettings';

export default class DynamicDivVisibility extends LightningElement {
    divVisibilityMap = {};

    connectedCallback() {
        // Define the div names you want to query
        const divNames = ['firstDiv', 'secondDiv', 'thirdDiv'];

        // Call the Apex method with div names
        getDivVisibilitySettings({ divNames })
            .then(result => {
                this.divVisibilityMap = result;
            })
            .catch(error => {
                console.error('Error fetching div visibility settings:', error);
            });
    }
}
