({
    fetchData: function() {
        // add your data fetching code here
    },
    filterData: function(component) {
        var data = component.get("v.data");
        var selectedValues1 = component.get("v.selectedValues1");
        var selectedValues2 = component.get("v.selectedValues2");
        var filteredData = [];
        data.forEach(function(item) {
            if(selectedValues1.includes(item.value1) && selectedValues2.includes(item.value2)) {
                filteredData.push(item);
            }
        });
