({
    doInit : function(component, event, helper) {
        helper.getRegions(component);
    },

    selectRegion : function(component, event, helper) {
        var region = event.getSource().get("v.value");
        component.set("v.selectedRegion", region);
        helper.getRegionData(component, region.Id);
    }
})
