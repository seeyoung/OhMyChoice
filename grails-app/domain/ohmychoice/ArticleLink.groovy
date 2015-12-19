package ohmychoice

class ArticleLink {

	String title
	String link
	
    static constraints = {
    }
	
	static hasMany = [politicians: Politician]
	
	String toString(){
		title
	}
}
