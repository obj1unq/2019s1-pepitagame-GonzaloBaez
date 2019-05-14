import wollok.game.*

object villaGesell {
	method image() = "ciudad.png"
	method position() = game.at(8,3)
	method esComidoPor(ave){}

	method nombre() = "Villa Gesell"
	method colisionaCon(persona){}
	method saludar(ave){}
}

object buenosAires {
	method image() = "ciudad.png"
	method position() = game.at(1,1)
	method colisionaCon(persona){}
	method esComidoPor(ave){}
	method nombre() = "Buenos Aires"
	method saludar(ave){}
}
