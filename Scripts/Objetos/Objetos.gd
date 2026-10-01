extends Node

class_name Objeto

var id_Objeto: int
var nombre_Objeto: String
var descripcion_Objeto: String
var icono_Objeto : Texture2D
var precio_Objeto: int #Entero porque no quiero economia con decimales, no lo veo necesario

enum rareza{
	Comun, #0
	Poco_Comun, #1
	Raro, #2
	Epico, #3
	LEGENDARIO, #4
	MITICO #5
}

var rareza_Objeto: rareza #En caso de poner mas idiomas, podria traducirse solo al ver el numero de la rareza

#Constructor generico de objetos
func _init(id: int, nombre: String, descripcion: String, precio: int,icono: Texture2D, rarezaElegida: rareza):
	self.id_Objeto = id
	self.nombre_Objeto = nombre
	self.descripcion_Objeto = descripcion
	self.icono_Objeto = icono
	self.precio_Objeto = precio
	self.rareza_Objeto = rarezaElegida
	
	
