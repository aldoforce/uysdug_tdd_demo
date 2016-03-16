public with sharing class AlgebraServicesStub implements IAlgebraServices {
	public Integer mock_sum_result {get; set;}

	public Integer sum(Integer a, Integer b) {
		return this.mock_sum_result;
	}
}