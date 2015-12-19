package ohmychoice

import grails.converters.deep.JSON

class ArticleLinkController {

    static scaffold = true
	
	def api(long id){
		render ArticleLink.get(id) as JSON
	}

}
