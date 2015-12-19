import ohmychoice.ArticleLink
import ohmychoice.District
import ohmychoice.Party
import ohmychoice.Person
import ohmychoice.Politician
import ohmychoice.PoliticianReputation

class BootStrap {

    def init = { servletContext ->
		if (District.count()==0) {
			District dist = new District(name:"부산 영도구")
			dist.save(flush:true)
			
			District dist2 = new District(name:"부산 사상구")
			dist2.save(flush:true)
			
			Party nuri = new Party(name:"새누리당")
			nuri.save(flush:true)
			Party minju = new Party(name:"새정치민주연합")
			minju.save(flush:true)
			
			Politician moo = new Politician(district:dist, party:nuri, name: "김무성", deptCd:"9770895", pokrId:"1951151").save(flush:true)
			
			Person person = new Person(name:"홍길동").save(flush:true)
			
			ArticleLink article = new ArticleLink(title:"김무성의 '연탄색' 발언, 실수가 아니다", link:"http://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0002169410")
			article.addToPoliticians(moo)
			article.addToPersons(person)
			article.save()
			
			article = new ArticleLink(title:'김무성 유학생 비하 발언에 외신 기자도 "어이 없다', link:"http://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0002169395")
			article.addToPoliticians(moo)
			article.addToPersons(person)
			article.save(flush:true)
			
			Politician mun = new Politician(district:dist2, party:minju, name: "문재인", deptCd:"9770759", pokrId:"19531110").save(flush:true)
			article = new ArticleLink(title:"문재인-정동영, 순창서 전격 회동... 복당 요청", link:"http://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0002169507")
			article.addToPoliticians(mun)
			article.addToPersons(person)
			article.save()
			
			article = new ArticleLink(title:"밀려드는 당원들, 수도권이 절반 이상", link:"http://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0002169360")
			article.addToPoliticians(mun)
			article.addToPersons(person)
			article.save(flush:true)
			
			Person person2 = new Person(name:"김무성")
			person2.save()
			Person person3 = new Person(name:"문재인")
			person3.save()
			new PoliticianReputation(politician:moo, person:person, good:false).save()
			new PoliticianReputation(politician:moo, person:person2, good:true).save()
			new PoliticianReputation(politician:moo, person:person3, good:false).save()
			new PoliticianReputation(politician:mun, person:person, good:true).save()
			new PoliticianReputation(politician:mun, person:person2, good:false).save()
			new PoliticianReputation(politician:mun, person:person3, good:true).save(flush:true)
		}
    }
    def destroy = {
    }
}
