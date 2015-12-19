package ohmychoice

import grails.converters.deep.JSON

class PersonController {

	static scaffold = true
	
	def api(long id){
		render Person.get(id) as JSON
	}

}
