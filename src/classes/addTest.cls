@isTest public class addTest {
	@isTest static void sum22Test()
    {
        Integer a=add.sum22(1);
        system.assertequals(23,a);
    }
    
    @isTest static void sum22_0Test()
    {
        Integer a=add.sum22(0);
        system.assertequals(22,a);
    }
}