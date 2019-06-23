@isTest
global class AnimalLocatorMock implements HttpCallOutMock {
    global HttpResponse Respond(HttpRequest req)
    {
        HttpResponse resp=new HttpResponse();
        resp.setHeader('Content-Type','application/json');
        resp.setStatusCode(200);
        resp.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');

        return resp;
    }

}