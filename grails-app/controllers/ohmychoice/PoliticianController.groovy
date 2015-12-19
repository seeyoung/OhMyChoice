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
		Politician polician = Politician.findByName(name)
		respond polician
	}
}
