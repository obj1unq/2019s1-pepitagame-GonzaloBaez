import wollok.game.*

object manzana {
	var property posicionX = 5
	var property posicionY = 1
	
	method image() = "manzana.png"
	method position() = game.at(posicionX,posicionY)
	method energia() = 80
	method colisionaCon(persona){
		persona.agarraComida(self)
	}
	method tirarComida(){
		self.posicionX(1.randomUpTo(10).truncate(0))
		self.posicionY(1.randomUpTo(10).truncate(0))
	}
	method darDeComer(ave){
		ave.come(self)
	}
}

object alpiste {
	var property posicionX = 5
	var property posicionY = 5
	
	method image() = "alpiste.png"
	method position() = game.at(posicionX,posicionY)
	method energia() = 5
	method colisionaCon(persona){
		persona.agarraComida(self)
	}
	method tirarComida(){
		self.posicionX(1.randomUpTo(10).truncate(0))
		self.posicionY(1.randomUpTo(10).truncate(0))
	}
	method darDeComer(ave){
		ave.come(self)
	}
}

object vacio {
	method darDeComer(ave){
		
	}
	method tirarComida(){
		
	}
}