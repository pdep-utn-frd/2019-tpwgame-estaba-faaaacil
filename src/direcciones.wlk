
class Direccion {
	method siguiente(posicion)
}

object izquierda inherits Direccion { 
	override method siguiente(posicion) = posicion.left(1) 
	method opuesto() = derecha
}

object derecha inherits Direccion { 
	override method siguiente(posicion) = posicion.right(1) 
	method opuesto() = izquierda
}

object abajo inherits Direccion { 
	override method siguiente(posicion) = posicion.down(1) 
	method opuesto() = arriba
}

object arriba inherits Direccion { 
	override method siguiente(posicion) = posicion.up(1) 
	method opuesto() = abajo
}