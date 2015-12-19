package ohmychoice

import grails.converters.deep.JSON

class SharedArticleController {

    static scaffold = true
	
	def api(long id){
		render SharedArticle.get(id) as JSON
	}


}
