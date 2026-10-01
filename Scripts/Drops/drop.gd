extends Area2D
var objeto : Objeto

#$Sprite2D.texture = objeto.icono_Objeto
func asignar_objeto(objeto_recibido: Objeto):
	self.objeto = objeto_recibido
	$Sprite2D.texture = self.objeto.icono_Objeto	
