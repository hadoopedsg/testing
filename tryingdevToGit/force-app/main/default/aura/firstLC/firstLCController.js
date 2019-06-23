({
	handleClick : function(component, event, helper) {
        console.info('Shubham first console log');
        component.set("v.error", 'button clicked');
        
        console.log('event called from:' + event.getSource());
		helper.myclick(component, event, helper);
    }
    
})