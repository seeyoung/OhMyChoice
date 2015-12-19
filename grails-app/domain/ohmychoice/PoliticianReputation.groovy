package ohmychoice

class PoliticianReputation {
	
	Politician politician
	Person person
	
	boolean good

    static constraints = {
		politician unique:'person'
    }
	
	static int getLikeCount(Politician politician){
		PoliticianReputation.findAllByPoliticianAndGood(politician,true).size()
	}
	static int getDislikeCount(Politician politician){
		PoliticianReputation.findAllByPoliticianAndGood(politician,false).size()
	}
}
