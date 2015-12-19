package ohmychoice

import grails.converters.deep.JSON

class DistrictController {

    static scaffold = true
	
	def api(long id){
		render District.get(id) as JSON
	}


}
