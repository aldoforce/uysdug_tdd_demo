public with sharing class AlgebraServicesMock implements IAlgebraServices {
	public Integer sum_result_mock {get; set;}
	public Boolean throw_exception {get; set;}

	public Integer sum(Integer a, Integer b) {
		//we might throw some exceptions today, huh?
		if (this.throw_exception) throw new AlgebraServicesMockException();

		return this.sum_result_mock;
	}

	public class AlgebraServicesMockException extends Exception{}
}