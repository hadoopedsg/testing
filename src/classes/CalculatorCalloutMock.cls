@isTest
global class CalculatorCalloutMock implements WebServiceMock
{
	global void doInvoke(object stub, object request, map<string,object> response, string endpoint, string soapAction, string requestName,
                        	string responseNS, string responseName, string responseType)
    {
         calculatorServices.doAddResponse response_x = new calculatorServices.doAddResponse();
        
        response_x.return_x = 3.0;
        response.put('response_x',response_x);
    }
                        
    
        
    
}