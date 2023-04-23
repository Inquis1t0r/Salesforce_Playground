// OpportunityController.js
({
    init: function(component, event, helper) {
        // Fetch Opportunities and their related objects on component initialization
        var action = component.get("c.getOpportunities");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.opportunities", response.getReturnValue());
            } else {
                console.error("Failed to fetch Opportunities: " + response.getError());
            }
        });
        $A.enqueueAction(action);
    }
})
