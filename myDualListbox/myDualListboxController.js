({
    doInit : function(component, event, helper) {
        // Initialize component attributes
        component.set("v.included", []);
        component.set("v.excluded", []);
    },
    fetchOptions : function(component, event, helper) {
        // Call server-side component to fetch options
        var action = component.get("c.getOptions");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.options", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    handleSelectionChange : function(component, event, helper) {
        // Handle change event for the dualListbox component
        var selectedValues = event.getParam("value");
        var isExclude = event.getSource().getLocalId() === "excludeListbox";
        if (isExclude) {
            component.set("v.excluded", selectedValues);
        } else {
            component.set("v.included", selectedValues);
        }
    }
})
