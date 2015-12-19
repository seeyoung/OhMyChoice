package ohmychoice

class ArticleLink {

	String title
	String link
	
    static constraints = {
    }
	
	static hasMany = [politicians: Politician, persons:Person]
	
	String toString(){
		title
	}
	
	static List<ArticleLink> getArticles4Politician(Politician politician){
		ArticleLink.createCriteria().list{
			politicians{
				eq('id', politician.id)
			}
		}
	}

}
