import wollok.game.*
import direcciones.*

object viborita {
	
	var property direccion = derecha
	var property position = game.at(5,5)
	method image() = "pepita.png"
	
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
	}
	
	method perder(){
		game.stop()
	}
	
	
}

object manzana {
	method image() = "manzana.png"
}
