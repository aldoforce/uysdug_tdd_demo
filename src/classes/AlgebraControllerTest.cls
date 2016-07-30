@isTest
private class AlgebraControllerTest {
	
	@isTest static void test_algebra_do_sum_positive() {
		//pre-context
			
			//stub
			AlgebraServicesMock mock = new AlgebraServicesMock();
			mock.sum_result_mock = 5; //fixed mocked result

			//create the controller
			AlgebraController controller = new AlgebraController(mock);

			//assign values
			controller.num_a = 2; 
			controller.num_b = 3;
			
		//test
		Test.startTest();

			//perform operation
			controller.do_sum(); //this will always set the result to 5

		Test.stopTest();

		//asserts
		system.assertEquals(
			5,
			controller.result,
			'Come on, 2+3 is 5. Something went wrong.'
		);
	}

	@isTest static void test_algebra_do_sum_negative() {
		//pre-context
			
			//stub
			AlgebraServicesMock mock = new AlgebraServicesMock();
			mock.throw_exception = true; //it's going to throw an exception, be warned!

			//create the controller
			AlgebraController controller = new AlgebraController(mock);

			//assign values
			controller.num_a = 2; 
			controller.num_b = 3;
			
		//test
		Test.startTest();

			//perform operation		
			try {
				PageReference p = controller.do_sum(); //throwing exceptions
			}
			catch(Exception pEx) {
				system.assertEquals(
					null,
					controller.result,
					'An exception should be present catched here!'
				);
			}

		Test.stopTest();
		
	}

}