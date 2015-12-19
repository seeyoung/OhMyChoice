package ohmychoice

import grails.converters.deep.JSON

class PoliticianReputationController {

    static scaffold = true
	
	def isLike(){
		Politician politician = Politician.get(Long.parseLong(params.politicianId))
		Person person = Person.get(Long.parseLong(params.personId))
		if(!person){
			person = new Person()
			person.save()
		}
		boolean isLike = Boolean.parseBoolean(params.isLike)
		
		if(politician){
			PoliticianReputation politicianReputation = PoliticianReputation.findByPoliticianAndPerson(politician, person)
			if(!politicianReputation) {
				politicianReputation = new PoliticianReputation(politician:politician, person:person, good:isLike)
			}else{
				politicianReputation.good = isLike
			}	
			politicianReputation.save(flush:true)
		}
		
		render """{"likeCount":${PoliticianReputation.getLikeCount(politician)}, "dislikeCount":${PoliticianReputation.getDislikeCount(politician)}}"""
	}
	def api(long id){
		render PoliticianReputation.get(id) as JSON
	}

}
