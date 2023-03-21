({
    openModal: function(component, event, helper) {
        // Show the modal and backdrop
        component.find('myModal').getElement().classList.add('slds-fade-in-open');
        component.find('myModalBackdrop').getElement().classList.add('slds-backdrop_open');
    },
    
    closeModal: function(component, event, helper) {
        // Hide the modal and backdrop
        component.find('myModal').getElement().classList.remove('slds-fade-in-open');
        component.find('myModalBackdrop').getElement().classList.remove('slds-backdrop_open');
    },
    
    triggerFlow: function(component, event, helper) {
        // Get the example object Id
        var exampleId = 'a023h00000abcde';
        
        // Create the flow URL
        var flowUrl = '/flow/My_Flow?exampleId=' + exampleId;
        
        // Navigate to the flow URL
        var navEvt = $A.get("e.force:navigateToURL");
        navEvt.setParams({
            "url": flowUrl
        });
        navEvt.fire();
        
        // Close the modal
        this.closeModal(component, event, helper);
    }
})
