package ohmychoice

class Person {

	String name
    static constraints = {
		name nullable:true
    }
	
	String toString(){
		name
	}
}
