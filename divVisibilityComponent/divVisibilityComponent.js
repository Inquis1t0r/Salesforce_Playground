// divVisibilityComponent.js
import { LightningElement, api, wire } from 'lwc';
import getIsDivVisible from '@salesforce/apex/DivVisibilityController.getIsDivVisible';

export default class DivVisibilityComponent extends LightningElement {
    @api metadataRecordName = 'Default'; // Default metadata record name

    @wire(getIsDivVisible, { metadataRecordName: '$metadataRecordName' })
    isDivVisible;

    // You can add other logic or methods here as needed
}
