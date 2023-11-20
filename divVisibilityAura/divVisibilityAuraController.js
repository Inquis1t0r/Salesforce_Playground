// divVisibilityAuraController.js
({
    doInit: function(component, event, helper) {
        var metadataRecordName = component.get("v.metadataRecordName");
        var action = component.get("c.getIsDivVisible");

        action.setParams({
            "metadataRecordName": metadataRecordName
        });

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.isDivVisible", response.getReturnValue());
            } else {
                console.error("Error retrieving div visibility:", response.getError());
            }
        });

        $A.enqueueAction(action);
    }
})
