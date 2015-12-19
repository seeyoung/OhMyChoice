package ohmychoice

class PoliticianActivity {
	
	Politician politician
	
	String pokrKrId
	
	static pokrBaseUrl = "http://pokr.kr/person/"

    static constraints = {
    }
	
	String getPokr(){
		pokrBaseUrl+pokrKrId
	}
}
