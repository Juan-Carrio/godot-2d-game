extends Node2D


func _ready():
	var inventario : Inventario = Inventario.new()
	var lista: Lista_Objetos = Lista_Objetos.new() #La hice de tipo lista objetos y agarro los datos
	
	inventario.agregar_objeto(lista.billetera_tade)
	inventario.agregar_objeto(lista.billetera_tade)
	inventario.agregar_objeto(lista.billetera_tade)
	
	$Drop.asignar_objeto(lista.billetera_tade)
	
	print(inventario.slot_inventario[0].item.nombre_Objeto, " " , inventario.slot_inventario[0].cantidad)
