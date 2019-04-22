import ciudades.*
import wollok.game.*
import comidas.*
import pepita.*


object roque {
	var property position = game.at(0,0)
	var property comidaEnMano = "nada"
	
	method image() = "jugador.png"
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
}
