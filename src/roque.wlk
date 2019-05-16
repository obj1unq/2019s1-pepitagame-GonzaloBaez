import ciudades.*
import wollok.game.*
import comidas.*
import pepita.*


object roque {
	var property posicionXroque = 0
	var property posicionYroque = 0
	var comidaEnMano = vacio
	var gramosAlpiste = 0
	
	method position() = game.at(posicionXroque,posicionYroque)
	method comidaEnMano(){
		return comidaEnMano
	}
	method saludar(ave){
		game.say(self,"hola pepita")
		game.say(pepita,"hola roque")
	}
	method comidaEnMano(comida){
		comidaEnMano = comida
	}		
	method agarraComida(comida){
		if (comidaEnMano == vacio){
			comidaEnMano = comida
			game.removeVisual(comida) 
		} else {
			comidaEnMano.tirarComida()
			game.addVisual(comidaEnMano)
			game.removeVisual(comida)
			comidaEnMano = comida
		}
	}
	method esComidoPor(ave){}
	method tirarComidaAlpiste(){
		game.addVisual(new Alpiste(posicionX = posicionXroque,posicionY = posicionYroque, cantGramos = gramosAlpiste))
		gramosAlpiste = 0
	}
	method tirarComidaManzana(){
		game.addVisual(new Manzana(posicionX = posicionXroque,posicionY = posicionYroque))
	}
	method image() = "jugador.png"
	method moverEnX(direccion){
		posicionXroque += direccion
		gramosAlpiste += 1
	}
		method moverEnY(direccion){
		posicionYroque += direccion
		gramosAlpiste += 1
	} 
	
}
