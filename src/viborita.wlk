import wollok.game.*
import direcciones.*
import visuales.*

object viborita {
	
	var property direccion = derecha
	var property position = game.at(5,5)
	var property puntos = 0
	var property imagen = "viborita.png"
	var property vel = 300
	
	method image() = imagen
	
	method irArriba() {
		direccion = arriba
		
	}

	method irAbajo() {
		direccion = abajo
		
	}

	method irIzquierda() {
		direccion = izquierda
		
	}

	method irDerecha() {
		direccion = derecha
		
	}
	
	method avanzar() {
		position = direccion.siguiente(position)
	}
	
	method comer(comida){
		game.removeVisual(comida)
		game.addVisualIn(comida, game.at(1.randomUpTo(8).roundUp(), 1.randomUpTo(8).roundUp()))
		puntos += 1
		game.say(self, self.puntos().toString())
		self.expandirse()
		
	}
	
	method expandirse(){
		game.addVisualIn(cuerpo, game.at(5,5))
	}
	method perder(){
		game.stop()
	}
	
}

object cuerpo{
	method image()="viborita.png"
}

object manzana {
	method image() = "manzana.png"
}
