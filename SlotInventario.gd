extends Node
class_name Slot_Inventario
var item : Objeto
var cantidad: int

func _init(item_nuevo : Objeto, cantidad_nueva : int):
	self.item = item_nuevo
	self.cantidad = cantidad_nueva
	
