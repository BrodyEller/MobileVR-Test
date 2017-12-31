extends Spatial

func _ready():
	var arvr_interface = ARVRServer.find_interface("Native mobile")
	arvr_interface.display_to_lens = 4
	arvr_interface.display_width = 14
	arvr_interface.iod = 6.5
	arvr_interface.oversample = 2
	arvr_interface.k1 = 0.75
	arvr_interface.k2 = 0.5
	if arvr_interface and arvr_interface.initialize():
    	get_viewport().arvr = true