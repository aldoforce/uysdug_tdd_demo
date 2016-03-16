@isTest
private class AlgebraControllerTest {
	
	@isTest static void test_algebra_do_sum() {
		//pre-context
			
			//stub
			AlgebraServicesStub stub = new AlgebraServicesStub();
			stub.mock_sum_result = 5;

			//create the controller
			AlgebraController controller = new AlgebraController(stub);

			//assign values
			controller.num_a = 2;
			controller.num_b = 3;
			
		//test
		Test.startTest();

			//perform operation
			controller.do_sum();

		Test.stopTest();

		//asserts
		system.assertEquals(
			5,
			controller.result,
			'Come on, 2+3 is 5. Something went wrong.'
		);
	}

}