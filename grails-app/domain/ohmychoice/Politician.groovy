package ohmychoice

class Politician {

	String name
	
	District district
	Party party
	
	String deptCd
	String pokrId
	
	String approvalRateChartId
	String reputationChartId
	
	String birthDay
	
	String duty
	
	String photoUrl
	
	
	static String baseUrl="http://www.assembly.go.kr/assm/memPop/memPopup.do?dept_cd="
	static String photoBaseUrl="http://www.assembly.go.kr/photo/"
	static String pokrBaseUrl="http://pokr.kr/person/"
	static String chartBaseUrl="http://live.amcharts.com/%s/embed/"
	
    static constraints = {
		deptCd nullable:true
		pokrId nullable:true
		approvalRateChartId nullable:true
		reputationChartId nullable:true
		photoUrl nullable:true
    }
	
	static mapping ={
		photoUrl type:'text'
	}
	
	String getInfoUrl(){
		baseUrl+deptCd
	}
	
	String getPhotoUrl(){
		photoUrl?:photoBaseUrl+deptCd+".jpg"
	}
	
	String toString(){
		name
	}
	
	String getPokrUrl(){
		pokrBaseUrl+pokrId
	}
	
	String getApprovalRateChartUrl(){
		sprintf(chartBaseUrl,approvalRateChartId)
	}
	
	String getReputationChartUrl(){
		sprintf(chartBaseUrl,reputationChartId)
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
