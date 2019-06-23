@isTest
global class ParkLocatorTest
{
	@isTest static void parkCalloutTest()
    {
        Test.setMock(WebServiceMock.Class, new ParkServiceMock());
        string con='Germany';
        List<string> result=ParkLocator.country(con);
        system.assertEquals(new List<string>{'Hamburg Wadden Sea National Park', 'Hainich National Park', 'Bavarian Forest National Park'}, result);
    }
}