@isTest
private class AxyValidatorPizzaHutCustomersTriggerTest
{
	@isTest
	static void test_method()
	{
		try {
		axyvalidator.ValidatorTriggerHandler.isTest = true;
			insert new Pizza_Hut_Customers__c();
		}catch(Exception e) {
			 
		}
	}
}