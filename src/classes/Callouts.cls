public class Callouts {
    
    public static HttpResponse getCallout()
    {
        Http http=new Http();

        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        HttpResponse resp=http.send(request);
        
        if(resp.getStatusCode()==200)
        {
            Map<String, Object> result=(Map<String, Object>) JSON.deserializeUntyped(resp.getBody());
            List<object> animals=(List<object>)result.get('animals');
            System.debug('Received the following animals:');
            for(Object animal:animals)
            {
                System.debug(animal);
            }
         }
        return resp;
    }
    
    public static HttpResponse postCallout()
    {
        Http http=new Http();

        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        request.setBody('{"name":"mighty-mosse"}');
        HttpResponse resp=http.send(request);
        
        if(resp.getStatusCode()!=201){
            system.debug('The status code is unexpected'+ resp.getStatusCode() + ' ' + resp.getStatus());
            
        }
        else{
            system.debug(resp.getBody());
        }
        return resp;
    }

}