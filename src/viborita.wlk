import wollok.game.*
import direcciones.*

object viborita {
	
	var property direccion = derecha
	var property posicion = game.at(3,3)
	method image() = "pepita.png"
	
	method irArriba() {
		direccion = arriba
		self.avanzar()
	}

	method irAbajo() {
		direccion = abajo
		self.avanzar()
	}

	method irIzquierda() {
		direccion = izquierda
		self.avanzar()
	}

	method irDerecha() {
		direccion = derecha
		self.avanzar()
	}
	
	method avanzar() {
		posicion = direccion.siguiente(posicion)
	}
	
	method comer(manzana){
		game.removeVisual(manzana)
		game.addVisualIn(manzana, game.at(1.randomUpTo(9).roundUp(), 1.randomUpTo(9).roundUp()))
	}
	
	
}

object manzana {
	method image() = "manzana.png"
	

}
