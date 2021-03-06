extends Spatial

onready var tiempo 
var numero_frame = 0
#onready var circuito = get_tree().get_root().get_node("/root/carrera/HUDpista")
onready var circuito = Global.pista
onready var HUDpista = get_tree().get_root().get_node("/root/carrera/HUDpista")

onready var  meta = get_node("meta")
onready var  parcial1 = get_node("parcial1")
onready var  parcial2 = get_node("parcial2")
onready var  parcial3 = get_node("parcial3")
onready var  parcial4 = get_node("parcial4")
onready var  parcial5 = get_node("parcial5")
onready var  parcial6 = get_node("parcial6")
onready var  parcial7 = get_node("parcial7")
onready var  parcial8 = get_node("parcial8")
onready var  parcial9 = get_node("parcial9")
onready var  parcial10 = get_node("parcial10")
onready var  metaVolanteMeta = get_node("meta/metaVolante")
onready var  metaVolanteParcial1 = get_node("parcial1/metaVolante")
onready var  metaVolanteParcial2 = get_node("parcial2/metaVolante")
onready var  metaVolanteParcial3 = get_node("parcial3/metaVolante")
onready var  metaVolanteParcial4 = get_node("parcial4/metaVolante")
onready var  metaVolanteParcial5 = get_node("parcial5/metaVolante")
onready var  metaVolanteParcial6 = get_node("parcial6/metaVolante")
onready var  metaVolanteParcial7 = get_node("parcial7/metaVolante")
onready var  metaVolanteParcial8 = get_node("parcial8/metaVolante")
onready var  metaVolanteParcial9 = get_node("parcial9/metaVolante")
onready var  metaVolanteParcial10 = get_node("parcial10/metaVolante")

var vueltas = 0

############ posiciones coche ###########################################
var	posicion_coche_x_0 = []
var	posicion_coche_x_1 = []
var	posicion_coche_x_2 = []
	
var	posicion_coche_y_0 = []
var	posicion_coche_y_1 = []
var	posicion_coche_y_2 = []
	
var	posicion_coche_z_0 = []
var	posicion_coche_z_1 = []
var	posicion_coche_z_2 = []

var origen_coche_0 = []
var origen_coche_1 = []
var origen_coche_2 = []

### posiciones circuito####

var posicion_fantasma_terreno_x_0 = []
var posicion_fantasma_terreno_x_1 = []
var posicion_fantasma_terreno_x_2 = []
	
var posicion_fantasma_terreno_y_0 = []
var posicion_fantasma_terreno_y_1 = []
var posicion_fantasma_terreno_y_2 = []
	
var posicion_fantasma_terreno_z_0 = []
var posicion_fantasma_terreno_z_1 = []
var posicion_fantasma_terreno_z_2 = []

var origen_fantasma_terreno_0 = []
var origen_fantasma_terreno_1 = []
var origen_fantasma_terreno_2 = []
	
		
var posicion_fantasma_jarama_scene_x_0 = []
var posicion_fantasma_jarama_scene_x_1 = []
var posicion_fantasma_jarama_scene_x_2 = []
	
var posicion_fantasma_jarama_scene_y_0 = []
var posicion_fantasma_jarama_scene_y_1 = []
var posicion_fantasma_jarama_scene_y_2 = []
	
var posicion_fantasma_jarama_scene_z_0 = []
var posicion_fantasma_jarama_scene_z_1 = []
var posicion_fantasma_jarama_scene_z_2 = []

var origen_fantasma_jarama_scene_0 = []
var origen_fantasma_jarama_scene_1 = []
var origen_fantasma_jarama_scene_2 = []
	
	
		
var posicion_fantasma_RoscoCampero_scene_x_0 = []
var posicion_fantasma_RoscoCampero_scene_x_1 = []
var posicion_fantasma_RoscoCampero_scene_x_2 = []
	
var	posicion_fantasma_RoscoCampero_scene_y_0 = []
var	posicion_fantasma_RoscoCampero_scene_y_1 = []
var	posicion_fantasma_RoscoCampero_scene_y_2 = []
var	posicion_fantasma_RoscoCampero_scene_z_0 = []
var	posicion_fantasma_RoscoCampero_scene_z_1 = []
var	posicion_fantasma_RoscoCampero_scene_z_2 = []

var	origen_fantasma_RoscoCampero_scene_0 = []
var	origen_fantasma_RoscoCampero_scene_1 = []
var	origen_fantasma_RoscoCampero_scene_2 = []
		
var posicion_fantasma_town_scene_x_0 = []
var posicion_fantasma_town_scene_x_1 = []
var posicion_fantasma_town_scene_x_2 = []
	
var posicion_fantasma_town_scene_y_0 = []
var posicion_fantasma_town_scene_y_1 = []
var posicion_fantasma_town_scene_y_2 = []
	
var posicion_fantasma_town_scene_z_0 = []
var posicion_fantasma_town_scene_z_1 = []
var posicion_fantasma_town_scene_z_2 = []

var origen_fantasma_town_scene_0 = []
var origen_fantasma_town_scene_1 = []
var origen_fantasma_town_scene_2 = []


onready var fantasma_body = get_node("fantasma")
var direccion = "res://fantasma.json"

func salvar():
	 
	var dic = {
		"posicion_fantasma_terreno_x_0" : posicion_fantasma_terreno_x_0,
		"posicion_fantasma_terreno_x_1" : posicion_fantasma_terreno_x_1,
		"posicion_fantasma_terreno_x_2" : posicion_fantasma_terreno_x_2,
	
		"posicion_fantasma_terreno_y_0" : posicion_fantasma_terreno_y_0,
		"posicion_fantasma_terreno_y_1" : posicion_fantasma_terreno_y_1,
		"posicion_fantasma_terreno_y_2" : posicion_fantasma_terreno_y_2,
	
		"posicion_fantasma_terreno_z_0" : posicion_fantasma_terreno_z_0,
		"posicion_fantasma_terreno_z_1" : posicion_fantasma_terreno_z_1,
		"posicion_fantasma_terreno_z_2" : posicion_fantasma_terreno_z_2,
	
		"origen_fantasma_terreno_0" : origen_fantasma_terreno_0,
		"origen_fantasma_terreno_1" : origen_fantasma_terreno_1,
		"origen_fantasma_terreno_2" : origen_fantasma_terreno_2,

#######################################################################	
		
		"posicion_fantasma_RoscoCampero_scene_x_0" : posicion_fantasma_RoscoCampero_scene_x_0,
		"posicion_fantasma_RoscoCampero_scene_x_1" : posicion_fantasma_RoscoCampero_scene_x_1,
		"posicion_fantasma_RoscoCampero_scene_x_2" : posicion_fantasma_RoscoCampero_scene_x_2,
	
		"posicion_fantasma_RoscoCampero_scene_y_0" : posicion_fantasma_RoscoCampero_scene_y_0,
		"posicion_fantasma_RoscoCampero_scene_y_1" : posicion_fantasma_RoscoCampero_scene_y_1,
		"posicion_fantasma_RoscoCampero_scene_y_2" : posicion_fantasma_RoscoCampero_scene_y_2,
	
		"posicion_fantasma_RoscoCampero_scene_z_0" : posicion_fantasma_RoscoCampero_scene_z_0,
		"posicion_fantasma_RoscoCampero_scene_z_1" : posicion_fantasma_RoscoCampero_scene_z_1,
		"posicion_fantasma_RoscoCampero_scene_z_2" : posicion_fantasma_RoscoCampero_scene_z_2,
	
		"origen_fantasma_RoscoCampero_scene_0" : origen_fantasma_RoscoCampero_scene_0,
		"origen_fantasma_RoscoCampero_scene_1" : origen_fantasma_RoscoCampero_scene_1,
		"origen_fantasma_RoscoCampero_scene_2" : origen_fantasma_RoscoCampero_scene_2,
		
		##############################
		
		"posicion_fantasma_jarama_scene_x_0" : posicion_fantasma_jarama_scene_x_0,
		"posicion_fantasma_jarama_scene_x_1" : posicion_fantasma_jarama_scene_x_1,
		"posicion_fantasma_jarama_scene_x_2" : posicion_fantasma_jarama_scene_x_2,
	
		"posicion_fantasma_jarama_scene_y_0" : posicion_fantasma_jarama_scene_y_0,
		"posicion_fantasma_jarama_scene_y_1" : posicion_fantasma_jarama_scene_y_1,
		"posicion_fantasma_jarama_scene_y_2" : posicion_fantasma_jarama_scene_y_2,
	
		"posicion_fantasma_jarama_scene_z_0" : posicion_fantasma_jarama_scene_z_0,
		"posicion_fantasma_jarama_scene_z_1" : posicion_fantasma_jarama_scene_z_1,
		"posicion_fantasma_jarama_scene_z_2" : posicion_fantasma_jarama_scene_z_2,

		"origen_fantasma_jarama_scene_0" : origen_fantasma_jarama_scene_0,
		"origen_fantasma_jarama_scene_1" : origen_fantasma_jarama_scene_1,
		"origen_fantasma_jarama_scene_2" : origen_fantasma_jarama_scene_2,
	
		"posicion_fantasma_town_scene_x_0" : posicion_fantasma_town_scene_x_0,
		"posicion_fantasma_town_scene_x_1" : posicion_fantasma_town_scene_x_1,
		"posicion_fantasma_town_scene_x_2" : posicion_fantasma_town_scene_x_2,
	
		"posicion_fantasma_town_scene_y_0" : posicion_fantasma_town_scene_y_0,
		"posicion_fantasma_town_scene_y_1" : posicion_fantasma_town_scene_y_1,
		"posicion_fantasma_town_scene_y_2" : posicion_fantasma_town_scene_y_2,
	
		"posicion_fantasma_town_scene_z_0" : posicion_fantasma_town_scene_z_0,
		"posicion_fantasma_town_scene_z_1" : posicion_fantasma_town_scene_z_1,
		"posicion_fantasma_town_scene_z_2" : posicion_fantasma_town_scene_z_2,

		"origen_fantasma_town_scene_0" : origen_fantasma_town_scene_0,
		"origen_fantasma_town_scene_1" : origen_fantasma_town_scene_1,
		"origen_fantasma_town_scene_2" : origen_fantasma_town_scene_2
	
	}
	
	var salvar = {"dic"  : dic }
	var file = File.new() 
	file.open(direccion, file.WRITE)
	file.store_line(salvar.to_json())
	file.close()
	
func load_game(): 
	var file = File.new()
	if not file.file_exists(direccion):
		return
	
	file.open(direccion, File.READ)
	var data = {}
	data.parse_json(file.get_as_text())
#	file.get_as_text()
	file.close()
#		
	posicion_fantasma_terreno_x_0 = data.dic.posicion_fantasma_terreno_x_0
	posicion_fantasma_terreno_x_1 = data.dic.posicion_fantasma_terreno_x_1
	posicion_fantasma_terreno_x_2 = data.dic.posicion_fantasma_terreno_x_2
	
	posicion_fantasma_terreno_y_0 = data.dic.posicion_fantasma_terreno_y_0
	posicion_fantasma_terreno_y_1 = data.dic.posicion_fantasma_terreno_y_1
	posicion_fantasma_terreno_y_2 = data.dic.posicion_fantasma_terreno_y_2
	
	posicion_fantasma_terreno_z_0 = data.dic.posicion_fantasma_terreno_z_0
	posicion_fantasma_terreno_z_1 = data.dic.posicion_fantasma_terreno_z_1
	posicion_fantasma_terreno_z_2 = data.dic.posicion_fantasma_terreno_z_2

	origen_fantasma_terreno_0 = data.dic.origen_fantasma_terreno_0
	origen_fantasma_terreno_1 = data.dic.origen_fantasma_terreno_1
	origen_fantasma_terreno_2 = data.dic.origen_fantasma_terreno_2
	
#	if data.has("dic") and  circuito == "jarama_scene":	
		
	posicion_fantasma_jarama_scene_x_0 = data.dic.posicion_fantasma_jarama_scene_x_0
	posicion_fantasma_jarama_scene_x_1 = data.dic.posicion_fantasma_jarama_scene_x_1
	posicion_fantasma_jarama_scene_x_2 = data.dic.posicion_fantasma_jarama_scene_x_2
	
	posicion_fantasma_jarama_scene_y_0 = data.dic.posicion_fantasma_jarama_scene_y_0
	posicion_fantasma_jarama_scene_y_1 = data.dic.posicion_fantasma_jarama_scene_y_1
	posicion_fantasma_jarama_scene_y_2 = data.dic.posicion_fantasma_jarama_scene_y_2
	
	posicion_fantasma_jarama_scene_z_0 = data.dic.posicion_fantasma_jarama_scene_z_0
	posicion_fantasma_jarama_scene_z_1 = data.dic.posicion_fantasma_jarama_scene_z_1
	posicion_fantasma_jarama_scene_z_2 = data.dic.posicion_fantasma_jarama_scene_z_2

	origen_fantasma_jarama_scene_0 = data.dic.origen_fantasma_jarama_scene_0
	origen_fantasma_jarama_scene_1 = data.dic.origen_fantasma_jarama_scene_1
	origen_fantasma_jarama_scene_2 = data.dic.origen_fantasma_jarama_scene_2
#	
#	if data.has("dic") and  circuito == "RoscoCampero_scene":
		
	posicion_fantasma_RoscoCampero_scene_x_0 = data.dic.posicion_fantasma_RoscoCampero_scene_x_0
	posicion_fantasma_RoscoCampero_scene_x_1 = data.dic.posicion_fantasma_RoscoCampero_scene_x_1
	posicion_fantasma_RoscoCampero_scene_x_2 = data.dic.posicion_fantasma_RoscoCampero_scene_x_2
	
	posicion_fantasma_RoscoCampero_scene_y_0 = data.dic.posicion_fantasma_RoscoCampero_scene_y_0
	posicion_fantasma_RoscoCampero_scene_y_1 = data.dic.posicion_fantasma_RoscoCampero_scene_y_1
	posicion_fantasma_RoscoCampero_scene_y_2 = data.dic.posicion_fantasma_RoscoCampero_scene_y_2
	
	posicion_fantasma_RoscoCampero_scene_z_0 = data.dic.posicion_fantasma_RoscoCampero_scene_z_0
	posicion_fantasma_RoscoCampero_scene_z_1 = data.dic.posicion_fantasma_RoscoCampero_scene_z_1
	posicion_fantasma_RoscoCampero_scene_z_2 = data.dic.posicion_fantasma_RoscoCampero_scene_z_2

	origen_fantasma_RoscoCampero_scene_0 = data.dic.origen_fantasma_RoscoCampero_scene_0
	origen_fantasma_RoscoCampero_scene_1 = data.dic.origen_fantasma_RoscoCampero_scene_1
	origen_fantasma_RoscoCampero_scene_2 = data.dic.origen_fantasma_RoscoCampero_scene_2
	
#	if data.has("dic") and  circuito == "town_scene":
		
	posicion_fantasma_town_scene_x_0 = data.dic.posicion_fantasma_town_scene_x_0
	posicion_fantasma_town_scene_x_1 = data.dic.posicion_fantasma_town_scene_x_1
	posicion_fantasma_town_scene_x_2 = data.dic.posicion_fantasma_town_scene_x_2
	
	posicion_fantasma_town_scene_y_0 = data.dic.posicion_fantasma_town_scene_y_0
	posicion_fantasma_town_scene_y_1 = data.dic.posicion_fantasma_town_scene_y_1
	posicion_fantasma_town_scene_y_2 = data.dic.posicion_fantasma_town_scene_y_2
	
	posicion_fantasma_town_scene_z_0 = data.dic.posicion_fantasma_town_scene_z_0
	posicion_fantasma_town_scene_z_1 = data.dic.posicion_fantasma_town_scene_z_1
	posicion_fantasma_town_scene_z_2 = data.dic.posicion_fantasma_town_scene_z_2

	origen_fantasma_town_scene_0 = data.dic.origen_fantasma_town_scene_0
	origen_fantasma_town_scene_1 = data.dic.origen_fantasma_town_scene_1
	origen_fantasma_town_scene_2 = data.dic.origen_fantasma_town_scene_2
	

func _ready():

	load_game()
	iniciar_parciales()
	iniciar_metasVolantes()
	grabar_coche()
	set_fixed_process(true)
	
	
	
	
	
func iniciar_metasVolantes():
#	hace que se vean los arcos de las metasVolantes
#	metaVolanteMeta.hide()
#	metaVolanteParcial1.show()
	metaVolanteParcial2.hide()
	metaVolanteParcial3.hide()
	metaVolanteParcial4.hide()
	metaVolanteParcial5.hide()
	metaVolanteParcial6.hide()
	metaVolanteParcial7.hide()
	metaVolanteParcial8.hide()
	metaVolanteParcial9.hide()
	metaVolanteParcial10.hide()
	
func iniciar_parciales():
	#### #### escone la meta del coche, esconde la leyermask (.hide no se ve) ####
	meta.set_layer_mask_bit(0,false)
	parcial1.set_layer_mask_bit(0,false)
	parcial2.set_layer_mask_bit(0,false)
	parcial3.set_layer_mask_bit(0,false)
	parcial4.set_layer_mask_bit(0,false)
	parcial5.set_layer_mask_bit(0,false)
	parcial6.set_layer_mask_bit(0,false)
	parcial7.set_layer_mask_bit(0,false)
	parcial8.set_layer_mask_bit(0,false)
	parcial9.set_layer_mask_bit(0,false)
	parcial10.set_layer_mask_bit(0,false)
	pass

func fantasma_corre():
#	var nodo_fantasma = get_tree().get_root().get_node("fantasma")
#	# cambiar
	if circuito == "terreno":
		if posicion_fantasma_terreno_x_0.empty():
			pass
		else:
			fantasma_body.set_global_transform(Transform(
		
			Vector3(posicion_fantasma_terreno_x_0[numero_frame] , posicion_fantasma_terreno_x_1[numero_frame] , posicion_fantasma_terreno_x_2[numero_frame]),
			Vector3(posicion_fantasma_terreno_y_0[numero_frame] , posicion_fantasma_terreno_y_1[numero_frame] , posicion_fantasma_terreno_y_2[numero_frame]),
			Vector3(posicion_fantasma_terreno_z_0[numero_frame] , posicion_fantasma_terreno_z_1[numero_frame] , posicion_fantasma_terreno_z_2[numero_frame]),
			Vector3(origen_fantasma_terreno_0[numero_frame],origen_fantasma_terreno_1[numero_frame],origen_fantasma_terreno_2[numero_frame])))
			
			if numero_frame >= posicion_fantasma_terreno_x_0.size()-1:
				pass
			else: numero_frame +=1

	if circuito == "RoscoCampero_scene":
		if posicion_fantasma_RoscoCampero_scene_x_0.empty():
			pass
		else:
			fantasma_body.set_global_transform(Transform(
		
			Vector3(posicion_fantasma_RoscoCampero_scene_x_0[numero_frame] , posicion_fantasma_RoscoCampero_scene_x_1[numero_frame] , posicion_fantasma_RoscoCampero_scene_x_2[numero_frame]),
			Vector3(posicion_fantasma_RoscoCampero_scene_y_0[numero_frame] , posicion_fantasma_RoscoCampero_scene_y_1[numero_frame] , posicion_fantasma_RoscoCampero_scene_y_2[numero_frame]),
			Vector3(posicion_fantasma_RoscoCampero_scene_z_0[numero_frame] , posicion_fantasma_RoscoCampero_scene_z_1[numero_frame] , posicion_fantasma_RoscoCampero_scene_z_2[numero_frame]),
			Vector3(origen_fantasma_RoscoCampero_scene_0[numero_frame],origen_fantasma_RoscoCampero_scene_1[numero_frame],origen_fantasma_RoscoCampero_scene_2[numero_frame])))
			
			if numero_frame >= posicion_fantasma_RoscoCampero_scene_x_0.size()-1:
				pass
			else: numero_frame +=1
	
	if circuito == "jarama_scene":
		if posicion_fantasma_jarama_scene_x_0.empty():
			pass
		else:
			fantasma_body.set_global_transform(Transform(
		
			Vector3(posicion_fantasma_jarama_scene_x_0[numero_frame] , posicion_fantasma_jarama_scene_x_1[numero_frame] , posicion_fantasma_jarama_scene_x_2[numero_frame]),
			Vector3(posicion_fantasma_jarama_scene_y_0[numero_frame] , posicion_fantasma_jarama_scene_y_1[numero_frame] , posicion_fantasma_jarama_scene_y_2[numero_frame]),
			Vector3(posicion_fantasma_jarama_scene_z_0[numero_frame] , posicion_fantasma_jarama_scene_z_1[numero_frame] , posicion_fantasma_jarama_scene_z_2[numero_frame]),
			Vector3(origen_fantasma_jarama_scene_0[numero_frame],origen_fantasma_jarama_scene_1[numero_frame],origen_fantasma_jarama_scene_2[numero_frame])))
			
			if numero_frame >= posicion_fantasma_jarama_scene_x_0.size()-1:
				pass
			else: numero_frame +=1
	
	if circuito == "town_scene":
		if posicion_fantasma_town_scene_x_0.empty():
			pass
		else:
			fantasma_body.set_global_transform(Transform(
		
			Vector3(posicion_fantasma_town_scene_x_0[numero_frame] , posicion_fantasma_town_scene_x_1[numero_frame] , posicion_fantasma_town_scene_x_2[numero_frame]),
			Vector3(posicion_fantasma_town_scene_y_0[numero_frame] , posicion_fantasma_town_scene_y_1[numero_frame] , posicion_fantasma_town_scene_y_2[numero_frame]),
			Vector3(posicion_fantasma_town_scene_z_0[numero_frame] , posicion_fantasma_town_scene_z_1[numero_frame] , posicion_fantasma_town_scene_z_2[numero_frame]),
			Vector3(origen_fantasma_town_scene_0[numero_frame],origen_fantasma_town_scene_1[numero_frame],origen_fantasma_town_scene_2[numero_frame])))
			
			if numero_frame >= posicion_fantasma_town_scene_x_0.size()-1:
				pass
			else: numero_frame +=1

func grabar_coche():	
	### apendiza a las listas del diccionario la matrix3x4 ####
	var coche_nodo = get_tree().get_root().get_node("carrera/PosicionSalida/car/BODY")
#	
	posicion_coche_x_0.append(coche_nodo.get_global_transform().basis.x[0])
	posicion_coche_x_1.append(coche_nodo.get_global_transform().basis.x[1])
	posicion_coche_x_2.append(coche_nodo.get_global_transform().basis.x[2])
	
	posicion_coche_y_0.append(coche_nodo.get_global_transform().basis.y[0])
	posicion_coche_y_1.append(coche_nodo.get_global_transform().basis.y[1])
	posicion_coche_y_2.append(coche_nodo.get_global_transform().basis.y[2])
	
	posicion_coche_z_0.append(coche_nodo.get_global_transform().basis.z[0])
	posicion_coche_z_1.append(coche_nodo.get_global_transform().basis.z[1])
	posicion_coche_z_2.append(coche_nodo.get_global_transform().basis.z[2])
	
	origen_coche_0.append(coche_nodo.get_global_transform().origin[0])
	origen_coche_1.append(coche_nodo.get_global_transform().origin[1])
	origen_coche_2.append(coche_nodo.get_global_transform().origin[2])
	
func _fixed_process(delta):
	tiempo =  get_tree().get_root().get_node("/root/carrera/HUDpista").segundosT
	if tiempo>=3:
		grabar_coche()
		fantasma_corre()
#	print("tiempo:",tiempo)
# area que hace que deje de grabar las posiciones del coche  "meta"

	

func _on_meta_body_enter( BODY ):
	if circuito == "terreno":
		if posicion_fantasma_terreno_x_0.empty() or posicion_coche_x_0.size() < posicion_fantasma_terreno_x_0.size():
			
			posicion_fantasma_terreno_x_0 = posicion_coche_x_0
			posicion_fantasma_terreno_x_1 = posicion_coche_x_1
			posicion_fantasma_terreno_x_2 = posicion_coche_x_2
			posicion_fantasma_terreno_y_0 = posicion_coche_y_0
			posicion_fantasma_terreno_y_1 = posicion_coche_y_1
			posicion_fantasma_terreno_y_2 = posicion_coche_y_2
			posicion_fantasma_terreno_z_0 = posicion_coche_z_0
			posicion_fantasma_terreno_z_1 = posicion_coche_z_1
			posicion_fantasma_terreno_z_2 = posicion_coche_z_2
			origen_fantasma_terreno_0 = origen_coche_0
			origen_fantasma_terreno_1 = origen_coche_1
			origen_fantasma_terreno_2 = origen_coche_2
			salvar()
			load_game()
	if circuito == "RoscoCampero_scene":
		if posicion_fantasma_RoscoCampero_scene_x_0.empty() or posicion_coche_x_0.size() < posicion_fantasma_RoscoCampero_scene_x_0.size():
			
			posicion_fantasma_RoscoCampero_scene_x_0 = posicion_coche_x_0
			posicion_fantasma_RoscoCampero_scene_x_1 = posicion_coche_x_1
			posicion_fantasma_RoscoCampero_scene_x_2 = posicion_coche_x_2
			posicion_fantasma_RoscoCampero_scene_y_0 = posicion_coche_y_0
			posicion_fantasma_RoscoCampero_scene_y_1 = posicion_coche_y_1
			posicion_fantasma_RoscoCampero_scene_y_2 = posicion_coche_y_2
			posicion_fantasma_RoscoCampero_scene_z_0 = posicion_coche_z_0
			posicion_fantasma_RoscoCampero_scene_z_1 = posicion_coche_z_1
			posicion_fantasma_RoscoCampero_scene_z_2 = posicion_coche_z_2
			origen_fantasma_RoscoCampero_scene_0 = origen_coche_0
			origen_fantasma_RoscoCampero_scene_1 = origen_coche_1
			origen_fantasma_RoscoCampero_scene_2 = origen_coche_2
			salvar()
			load_game()
		
	numero_frame = 0
	
	posicion_coche_x_0.clear()
	posicion_coche_x_1.clear()
	posicion_coche_x_2.clear()
	
	posicion_coche_y_0.clear()
	posicion_coche_y_1.clear()
	posicion_coche_y_2.clear()
	
	posicion_coche_z_0.clear()
	posicion_coche_z_1.clear()
	posicion_coche_z_2.clear()

	origen_coche_0.clear()
	origen_coche_1.clear()
	origen_coche_2.clear()

	parcial1.set_layer_mask_bit(0,true)
#	meta.set_layer_mask_bit(0,false)
#	metaVolanteParcial3.hide()
#	
#	metaVolanteParcial1.show()
	HUDpista.metaVolante.hide()
	HUDpista.parcial1Volante.show()
	
	print ("meta")
	print ("Acho aqui solo entra una vez")
	vueltas += 1
	print ("vueltas: " + str(vueltas))
	

func _on_parcial1_body_enter( BODY ):
	#### hace vidible  la meta del coche, hace visible la layermask  ####
	parcial2.set_layer_mask_bit(0,true)
	meta.set_layer_mask_bit(0,false)
#	metaVolanteParcial1.hide()
	metaVolanteParcial2.show()
	HUDpista.parcial1Volante.hide()
	HUDpista.parcial2Volante.show()
	print ("parcial1")
	pass
func _on_parcial2_body_enter( BODY ):
	parcial3.set_layer_mask_bit(0,true)
	parcial1.set_layer_mask_bit(0,false)
	metaVolanteParcial2.hide()
	metaVolanteParcial3.show()
	HUDpista.parcial2Volante.hide()
	HUDpista.parcial3Volante.show()
	print ("parcial2")
	pass 
	
func _on_parcial3_body_enter( BODY ):
	parcial4.set_layer_mask_bit(0,true)
	parcial2.set_layer_mask_bit(0,false)
	metaVolanteParcial3.hide()
	metaVolanteParcial4.show()
	HUDpista.parcial3Volante.hide()
	HUDpista.parcial4Volante.show()
	print ("parcial3")
	pass 
	
func _on_parcial4_body_enter( BODY ):
	parcial5.set_layer_mask_bit(0,true)
	parcial3.set_layer_mask_bit(0,false)
	metaVolanteParcial4.hide()
	metaVolanteParcial5.show()
	HUDpista.parcial4Volante.hide()
	HUDpista.parcial5Volante.show()
	print ("parcial4")
	pass 
	
func _on_parcial5_body_enter( BODY ):
	parcial6.set_layer_mask_bit(0,true)
	parcial4.set_layer_mask_bit(0,false)
	metaVolanteParcial5.hide()
	metaVolanteParcial6.show()
	HUDpista.parcial5Volante.hide()
	HUDpista.parcial6Volante.show()
	print ("parcial5")
	pass 
	
func _on_parcial6_body_enter( BODY ):
	parcial7.set_layer_mask_bit(0,true)
	parcial5.set_layer_mask_bit(0,false)
	metaVolanteParcial6.hide()
	metaVolanteParcial7.show()
	HUDpista.parcial6Volante.hide()
	HUDpista.parcial7Volante.show()
	print ("parcial6")
	pass 
	
func _on_parcial7_body_enter( BODY ):
	parcial8.set_layer_mask_bit(0,true)
	parcial6.set_layer_mask_bit(0,false)
	metaVolanteParcial7.hide()
	metaVolanteParcial8.show()
	HUDpista.parcial7Volante.hide()
	HUDpista.parcial8Volante.show()
	print ("parcial7")
	pass 
	
func _on_parcial8_body_enter( BODY ):
	parcial9.set_layer_mask_bit(0,true)
	parcial7.set_layer_mask_bit(0,false)
	metaVolanteParcial8.hide()
	metaVolanteParcial9.show()
	HUDpista.parcial8Volante.hide()
	HUDpista.parcial9Volante.show()
	print ("parcial8")
	pass 
	
func _on_parcial9_body_enter( BODY ):
	parcial10.set_layer_mask_bit(0,true)
	parcial8.set_layer_mask_bit(0,false)
	metaVolanteParcial9.hide()
	metaVolanteParcial10.show()
	HUDpista.parcial9Volante.hide()
	HUDpista.parcial10Volante.show()
	print ("parcial9")
	pass 
	
	
func _on_parcial10_body_enter( BODY ):
#	parcial10.set_layer_mask_bit(0,false)
	meta.set_layer_mask_bit(0,true)
	parcial9.set_layer_mask_bit(0,false)
	metaVolanteParcial10.hide()
	metaVolanteMeta.show()
	HUDpista.parcial10Volante.hide()
	HUDpista.metaVolante.show()
	print ("parcial10")
	pass 






