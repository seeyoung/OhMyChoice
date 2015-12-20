package ohmychoice

import grails.converters.deep.JSON
import groovy.json.JsonOutput


class PoliticianController {

    static scaffold = true
	
	def apiNameSearch(String name){
		
		render Politician.findAllByName(name) as JSON
	}
	
	def api(long id){
		render Politician.get(id) as JSON
	}
	
	def nameSearch(String name){
		Politician politician = Politician.findByName(name)
		if(!politician){
			redirect (action:"create", params:[name:name])
		} else respond politician
	}
	
	def isLike(){
		Politician politician = Politician.get(Long.parseLong(params.politicianId))
		Person person = Person.get(Long.parseLong(params.personId?:"-1"))
		if(!person){
			person = new Person(name:System.currentTimeSeconds())
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
		
		respond politician, [view:"nameSearch"]
	}

}
