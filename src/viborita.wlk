import wollok.game.*

object viborita {
	
	var property direccion 
	var property position = game.at(3,3)
	method image() = "pepita.png"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
	
	method movete(){
		self.move()
	}
	
	method comer(manzana){
		game.removeVisual(manzana)
		game.addVisualIn(manzana, game.at(1.randomUpTo(9).roundUp(), 1.randomUpTo(9).roundUp()))
	}
	
}

object manzana {
	method image() = "manzana.png"
	

}

object arriba{}
object abajo{}
object derecha{}
object izquierda{}