import ciudades.*
import wollok.game.*
import comidas.*
import pepita.*


object roque {
	var property position = game.at(0,0)
	var comidaEnMano = "nada"
	
	method comidaEnMano(comida){
		comidaEnMano = comida
		game.removeVisual(comida)
	}
	
	method image() = "jugador.png"
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
}
