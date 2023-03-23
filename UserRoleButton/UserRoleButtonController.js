({
    init: function(component, event, helper) {
        var action = component.get("c.checkUserRole");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var isSystemAdmin = response.getReturnValue();
                component.set("v.showButton", isSystemAdmin);
            }
        });
        $A.enqueueAction(action);
    }
})
