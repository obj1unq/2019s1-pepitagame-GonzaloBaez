import ciudades.*
import wollok.game.*
import comidas.*
import roque.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = ciudad.position()
	method image() = if (self.energia()>100) {
						"pepita-gorda-raw.png"	
						 } else {
							"pepita.png"
						}

	method come(comida) {
		self.move(comida.position())
		energia = energia + comida.energia()
		game.removeVisual(comida)
		
	}
	
	method volaHacia(unaCiudad) {
		if (self.position() != unaCiudad.position() && self.energia()>= self.energiaNecesariaParaVolarAPosicion(unaCiudad.position())) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}else if (self.position() != unaCiudad.position() && self.energia()< self.energiaNecesariaParaVolarAPosicion(unaCiudad.position())){
			game.say(self, "Dame de comer primero!")
		} else {
			game.say(self, "Ya estoy en !")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaNecesariaParaVolarAPosicion(nuevaPosicion)
		self.position(nuevaPosicion)
	}
	method energiaNecesariaParaVolarAPosicion(posicion){
		return self.energiaParaVolar(position.distance(posicion))
	}	
}

object pepona{
	method image() = "pepona.png"
	method position() = game.at(7,2)
	
}
object pipa{
	method image() = "pepitaCanchera.png"
	method position() = game.at(7,7)
	
}
