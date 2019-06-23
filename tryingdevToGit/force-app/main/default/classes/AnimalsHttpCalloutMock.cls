@isTest
global class AnimalsHttpCalloutMock implements HttpCallOutMock
{
	global HttpResponse Respond(HttpRequest request)
    {
        HttpResponse response=new HttpResponse();
        response.setHeader('Content-Type','application/json;charset=UTF-8');
        response.setBody('{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}');
		response.setStatusCode(200);
        return response;
    }
}