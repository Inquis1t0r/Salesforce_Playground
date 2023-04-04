({
    getTemperature: function(component, event, helper) {
        var city = component.get("v.city");
        
        var action = component.get("c.getCurrentTemperature");
        action.setParams({
            "city": city
        });
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var temperature = response.getReturnValue();
                component.set("v.temperature", temperature);
            }
            else {
                console.log("Failed with state: " + state);
            }
        });
        
        $A.enqueueAction(action);
    }
})
