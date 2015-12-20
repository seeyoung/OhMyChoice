package ohmychoice

class VideoLink {

	String title
	String youtubeId
	
    static constraints = {
    }
	
	static hasMany = [politicians: Politician, persons:Person]
	
	String toString(){
		title
	}
	
	static List<VideoLink> getVideos4Politician(Politician politician){
		VideoLink.createCriteria().list{
			politicians{
				eq('id', politician.id)
			}
		}
	}

}
