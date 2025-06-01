function createButtons(){
	global.play = instance_create_layer(room_width/4, room_height/2, "buttons", obj_button)
	global.play.sprite_index = spr_button
	global.play.image_index = 0
	
	global.back = instance_create_layer((room_width/4)+(room_width/2), room_height/2, "buttons", obj_button)
	global.back.sprite_index = spr_button
	global.back.image_index = 1

	
}

function createTabs() {
	if (!obj_controller.tabs_visible) {
		
		var p_cards_x = obj_controller.p_cards_x[6]-100
	
		global.tab_previous = instance_create_layer(p_cards_x, global.p_inicial_y-25, "buttons", obj_button)
		global.tab_previous.sprite_index = spr_tab
		global.tab_previous.image_angle = -180
		global.tab_previous.goto_next = 0

		global.tab_next = instance_create_layer(p_cards_x+room_width/2.45, global.p_inicial_y-25, "buttons", obj_button)
		global.tab_next.sprite_index = spr_tab
		global.tab_next.goto_next = 1
	
		obj_controller.tabs_visible = 1
		
	}
}