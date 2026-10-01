extends Node

class_name Inventario
var slot_inventario : Array[Slot_Inventario]

func agregar_objeto(objeto_nuevo: Objeto):
	var encontrado = false
	var tamaño = slot_inventario.size()
	for i in range(tamaño):
		if(objeto_nuevo == slot_inventario[i].item):
			slot_inventario[i].cantidad += 1
			encontrado = true
			break
	if(encontrado == false):
		var nuevo_slot = Slot_Inventario.new(objeto_nuevo, 1)
		slot_inventario.append(nuevo_slot)
