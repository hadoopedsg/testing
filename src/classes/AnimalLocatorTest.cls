@isTest
private class AnimalLocatorTest {
	@isTest
    static void postcallout()
    {
        Test.setMock(HttpCallOutMock.Class, new AnimalLocatorMock());
        //string result=(String)(AnimalLocator.getAnimalNameById(1));
                string result = (string)(AnimalLocator.getAnimalNameById(1));

        string expectedval='chicken';
        System.assertEquals(result,expectedVal);

        //system.debug(expectedval);
    }
}