package ohmychoice

import grails.converters.deep.JSON

class PartyController {

    static scaffold = true
	
	def api(long id){
		render Party.get(id) as JSON
	}

}
