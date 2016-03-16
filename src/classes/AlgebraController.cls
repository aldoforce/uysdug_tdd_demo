public with sharing class AlgebraController {
	public Integer num_a {get; set;}
	public Integer num_b {get; set;}
	public Integer result {get; set;}

	private IAlgebraServices aas;

	public AlgebraController() {		
		this( new AlgebraServices() );
	}

	public AlgebraController(IAlgebraServices aas) {
		this.aas = aas;
	}

	public PageReference do_sum() {		
		try {			
			this.result = this.aas.sum(this.num_a, this.num_b);
		}
		catch(Exception pEx) {
			//catch some exception here
			ApexPages.addMessages(pEx);
		}
		
		return null;
	}
}