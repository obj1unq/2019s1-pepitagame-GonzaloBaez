import ciudades.*
import wollok.game.*
import comidas.*
import pepita.*


object roque {
	var property position = game.at(0,0)
	
	var comidaEnMano = vacio
	
	method comidaEnMano(){
		return comidaEnMano
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
	method image() = "jugador.png"
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
}
