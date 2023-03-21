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
    }
})
