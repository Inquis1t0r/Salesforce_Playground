({
    doInit: function(component, event, helper) {
        // fetch data from your data source
        var data = helper.fetchData();
        component.set("v.data", data);
    },
    handleSelectionChange1: function(component, event, helper) {
        var selectedValues = event.getParam("value");
        component.set("v.selectedValues1", selectedValues);
        helper.filterData(component);
    },
    handleSelectionChange2: function(component, event, helper) {
        var selectedValues = event.getParam("value");
        component.set("v.selectedValues2", selectedValues);
        helper.filterData(component);
    }
})
