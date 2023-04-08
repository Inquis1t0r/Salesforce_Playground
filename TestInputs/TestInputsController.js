({
	myAction : function(component, event, helper) {
		
	},
    updateRecord : function(component, event, helper) {
        var recordId = component.get("v.recordId");
        var field1 = component.find("input-field-1").get("v.value");
        var field2 = component.find("input-field-2").get("v.value");
        var field3 = component.find("input-field-3").get("v.checked");
        var field4 = component.find("input-field-4").get("v.value");
        var field5 = component.find("input-field-5").get("v.value");

        var action = component.get("c.updateRecordWithFields");
        action.setParams({
            recordId: recordId,
            field1: field1,
            field2: field2,
            field3: field3,
            field4: field4,
            field5: field5
        });

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log("Record updated successfully.");
            }
            else {
                console.log("Error updating record.");
            }
        });

        $A.enqueueAction(action);
    }
})
