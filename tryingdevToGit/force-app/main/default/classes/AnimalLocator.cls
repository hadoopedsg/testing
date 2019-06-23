public class AnimalLocator {

    public static string getAnimalNameById(Integer id)
    {
        Http http=new Http();
       // Integer i=id; 
        HttpRequest req=new HttpRequest();
        //string ur='https://th-apex-http-callout.herokuapp.com/animals/' + id;
       // system.debug(ur);
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        req.setMethod('GET');
        HttpResponse resp=http.send(req);
        
        String returnValue = NULL;
		map<string,object> animal;
        if(resp.getStatusCode()==200)
        {
            Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(resp.getBody());
            animal = (Map<String, Object>) results.get('animal');
        }
       
		system.debug(animal.get('name'));
       return ((String)(animal.get('name')));
    
    }
}