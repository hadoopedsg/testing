@isTest
public class AnimalsCalloutsTest
{
	@isTest
    static void testGetCallout()
    {
        StaticResourceCalloutMock srcm=new StaticResourceCalloutMock();
        
        srcm.setStaticResource('GetAnimalResource');
        srcm.setStatusCode(200);
        srcm.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCallOutMock.class,srcm);
        HttpResponse result=Callouts.getCallout();
        
        system.assertNotEquals(null,result,'Result is null');
        system.assertEquals(200, result.getStatusCode(), 'wrong status code');
        system.assertEquals('application/json;charset=UTF-8', result.getHeader('Content-Type'), 'wrong data');
        
        map<string,object> jsonAnimal=(map<string,object>) JSON.deserializeUntyped(result.getBody());
        List<object> animals =(list<object>)jsonAnimal.get('animals');
        system.assertEquals(3, animals.size(), 'cant be more than 3');
        
    }
    
    @isTest
    static void testPostCallout()
    {
        Test.setMock(HttpCallOutMock.Class, new AnimalsHttpCalloutMock());
        HttpResponse resp=Callouts.postCallout();
        String contentType=resp.getHeader('Content-Type');
        system.assert(contentType=='application/json;charset=UTF-8');
        String actualval=resp.getBody();
        system.debug(resp.getBody());
        String expectedValue = '{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}';
		system.assertEquals(actualval,expectedValue);
        system.assertEquals(200,resp.getStatusCode());
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}