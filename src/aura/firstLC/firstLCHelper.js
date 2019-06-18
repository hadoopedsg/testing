({
	myclick : function(component, event, helper)
    {
		console.info("FIRST HELPER");
        component.set("v.error",'name change by helper');
	}
})