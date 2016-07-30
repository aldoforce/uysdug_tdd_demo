public with sharing class AlgebraServicesMock implements IAlgebraServices {
	public Integer sum_result_mock {get; set;}

	public Integer sum(Integer a, Integer b) {
		return this.sum_result_mock;
	}
}