import wollok.game.*

object villaGesell {
	method image() = "ciudad.png"
	method position() = game.at(8,3)


	method nombre() = "Villa Gesell"
	method colisionaCon(persona){
		
	}
}

object buenosAires {
	method image() = "ciudad.png"
	method position() = game.at(1,1)
	method colisionaCon(persona){
		
	}
	method nombre() = "Buenos Aires"
}
