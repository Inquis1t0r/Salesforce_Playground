({
    showModal : function(component, event, helper) {
        component.set("v.showModal", true);
    },
    
    hideModal : function(component, event, helper) {
        component.set("v.showModal", false);
    },
    
    proceed : function(component, event, helper) {
        // Perform the desired action
        // ...
        component.set("v.showModal", false);
    }
})
