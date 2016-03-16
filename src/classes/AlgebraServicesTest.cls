@isTest
private class AlgebraServicesTest {
	
	@isTest static void test_sum_positive() {
		//pre-context
		
		//test
		Test.startTest();
			
			//get instance
			AlgebraServices aas = new AlgebraServices();

			//result
			Integer result = aas.sum(2, 3);			

		Test.stopTest();

		//asserts
		system.assertEquals(
			5, 
			result,
			'Hey, 2+3 needs to be 5, something went wrong'
		);
	}

	@isTest static void test_sum_positive_with_null() {
		//pre-context
		
		//test
		Test.startTest();
			
			//get instance
			AlgebraServices aas = new AlgebraServices();

			//result
			Integer result = aas.sum(2, null);			

		Test.stopTest();

		//asserts
		system.assertEquals(
			2, 
			result,
			'Hey, 2+null needs to be 2, something went wrong'
		);
	}

	@isTest static void test_sum_positive_with_null_2() {
		//pre-context
		
		//test
		Test.startTest();
			
			//get instance
			AlgebraServices aas = new AlgebraServices();

			//result
			Integer result = aas.sum(null, null);			

		Test.stopTest();

		//asserts
		system.assertEquals(
			0, 
			result,
			'Hey, null+null should be 0, something went wrong'
		);
	}
}