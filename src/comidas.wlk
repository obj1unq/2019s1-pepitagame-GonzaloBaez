import wollok.game.*

class Manzana {
	var property posicionX
	var property posicionY
	
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
	method esComidoPor(ave){
		ave.comer(self)
	}
	method saludar(ave){}
}

class Alpiste {
	var property posicionX 
	var property posicionY
	var property cantGramos = 0
	
	method image() = "alpiste.png"
	method position() = game.at(posicionX,posicionY)
	method energia() = 0.5 * cantGramos
	method colisionaCon(persona){
		persona.agarraComida(self)
	}
	method saludar(ave){}
	method tirarComida(){
		self.posicionX(1.randomUpTo(10).truncate(0))
		self.posicionY(1.randomUpTo(10).truncate(0))
	}
	method esComidoPor(ave){
		ave.comer(self)
	}
}

object vacio {
	method esComidoPor(ave){
		
	}
	method tirarComida(){
		
	}
}