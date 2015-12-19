import ohmychoice.ArticleLink
import ohmychoice.District
import ohmychoice.Party
import ohmychoice.Person
import ohmychoice.Politician
import ohmychoice.SharedArticle

class BootStrap {

    def init = { servletContext ->
		if (District.count()==0) {
			District dist = new District(name:"부산 영도구")
			dist.save(flush:true)
			
			Party nuri = new Party(name:"새누리당")
			nuri.save(flush:true)
			
			Politician politician = new Politician(district:dist, party:nuri, name: "김무성", deptCd:"9770895", pokrId:"1951151").save(flush:true)
			
			Person person = new Person(name:"홍길동").save(flush:true)
			
			ArticleLink article = new ArticleLink(title:"김무성의 '연탄색' 발언, 실수가 아니다", link:"http://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0002169410")
			article.addToPoliticians(politician)
			article.save()
			
			new SharedArticle(articleLink:article, person:person, comments:"실수일리가...").save()
			
		}
    }
    def destroy = {
    }
}
