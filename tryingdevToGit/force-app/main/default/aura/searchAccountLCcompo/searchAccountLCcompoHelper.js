({
	searchHelper : function(component,event) {
        
        var action=component.get("c.fetchAccount");
        action.setParams({
            'searchKeyword' : component.get("v.searchKeyword")
        });
		
	}
})