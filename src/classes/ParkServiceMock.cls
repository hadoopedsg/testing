@isTest
global class ParkServiceMock implements WebServiceMock
{
	global void doInvoke(object stub, object request, map<string,object> response, string endpoint, string soapAction, string requestName,
                        	string responseNS, string responseName, string responseType)
    {
        ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
        response_x.return_x=new List<String>{'Hamburg Wadden Sea National Park', 'Hainich National Park', 'Bavarian Forest National Park'};
        response.put('response',response_x); 
    }
}