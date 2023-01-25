extends Area3D
class_name Cell

@onready var topFace = $TopFace
@onready var northFace = $NorthFace
@onready var eastFace = $EastFace 
@onready var southFace = $SouthFace
@onready var westFace = $WestFace
@onready var bottomFace = $BottomFace


func update_faces(cell_list) -> void:
	var my_grid_position = Vector2i(position.x/Globals.GRID_SIZE, position.z/2)
#	for cell in cell_list:
#		cell = Vector2(cell)
	if cell_list.has(my_grid_position + Vector2i.RIGHT):
		eastFace.hide()
	if cell_list.has(my_grid_position + Vector2i.LEFT):
		westFace.hide()
	if cell_list.has(my_grid_position + Vector2i.DOWN):
		southFace.hide()
	if cell_list.has(my_grid_position + Vector2i.UP):
		northFace.hide()

