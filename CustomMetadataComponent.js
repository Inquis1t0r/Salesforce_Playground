import { LightningElement, wire } from 'lwc';
import getCustomMetadataRecord from '@salesforce/apex/CustomMetadataController.getCustomMetadataRecord';

export default class CustomMetadataComponent extends LightningElement {
    @wire(getCustomMetadataRecord, { recordId: 'customMetadataRecordId' })
    customMetadata;

    // Rest of the component code
}
