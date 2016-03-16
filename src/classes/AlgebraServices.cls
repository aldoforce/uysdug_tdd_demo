public with sharing class AlgebraServices implements IAlgebraServices{
	public Integer sum(Integer a, Integer b) {
		if (a == null) a = 0;
		if (b == null) b = 0;

		return a + b;
	}
}