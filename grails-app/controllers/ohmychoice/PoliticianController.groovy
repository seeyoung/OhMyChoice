package ohmychoice

import grails.converters.deep.JSON
import groovy.json.JsonOutput


class PoliticianController {

    static scaffold = true
	
	def search(String name){
		
		render Politician.findAllByName(name) as JSON
	}
	
	def api(long id){
		render Politician.get(id) as JSON
	}
}
