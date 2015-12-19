package ohmychoice

class Politician {

	String name
	
	District district
	Party party
	
	String deptCd
	String pokrId
	
	
	static String baseUrl="http://www.assembly.go.kr/assm/memPop/memPopup.do?dept_cd="
	static String photoBaseUrl="http://www.assembly.go.kr/photo/"
	static String pokrBaseUrl="http://pokr.kr/person/"
	
    static constraints = {
		deptCd nullable:true
		pokrId nullable:true
    }
	
	String getInfoUrl(){
		baseUrl+deptCd
	}
	
	String getPhotoUrl(){
		photoBaseUrl+deptCd+".jpg"
	}
	
	String toString(){
		name
	}
	
	String getPokrUrl(){
		pokrBaseUrl+pokrId
	}
	
	List<ArticleLink> searchArticles(){
		ArticleLink.getArticles4Politician(this)
	}

	int likeCount(){
		PoliticianReputation.getLikeCount(this)
	}
	int dislikeCount(){
		PoliticianReputation.getDislikeCount(this)
	}
}
