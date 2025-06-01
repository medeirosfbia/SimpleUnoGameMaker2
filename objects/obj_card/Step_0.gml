var selected_card = obj_controller.selected_card
var tab = obj_controller.tab
var cards_on_tab = obj_controller.cards_on_tab
var center_card = obj_controller.center_card

var collision = position_meeting(mouse_x, mouse_y, self)
|| position_meeting(mouse_x, mouse_y, instance_nearest(x,y,obj_card_collision))

if (selected) {
	image_xscale = 4.5
	image_yscale = 4.5
	x = room_width/2
	y = room_height/2 +150
	
	
	if(selected_card[0] == noone) {
		selected = 0
		image_xscale = 3
		image_yscale = 3
		image_angle = 0
		y = global.p_inicial_y
		reloadXSpacing()
	}

}
else if(collision && center_card[0] != id && is_player) {
	image_xscale = 3.5
	image_yscale = 3.5
	
	y = global.p_inicial_y - sprite_get_height(spr_cover) - 3
}
else if (center_card[0] == id) {
	is_visible = 1
	var sprite_i
	switch(center_card[1]){
			case 0:
				sprite_i = spr_red
				break
			case 1:
				sprite_i = spr_blue
				break
			case 2:
				sprite_i = spr_green
				break
			case 3:
				sprite_i = spr_yellow
				break
			case 5:
				sprite_i = spr_especial
				break
		}
		sprite_index = sprite_i
		image_index = center_card[2]
		visible = 1
}
else {
	image_xscale = 3
	image_yscale = 3
	
	if (is_player){
		y = global.p_inicial_y
	}
	else {
		y = global.op_inicial_y	
	}
}


if(mouse_check_button_released(mb_left) && collision
&& !is_blocked && is_player) {
	if(!selected){
		if(selected_card[0] == noone){
			selected_card[0] = id
			selected_card[1] = color
			selected_card[2] = card_number
			selected_card[3] = is_number
			selected = 1
			createButtons()
		}
	}

	//show_debug_message(selected_card)
}






visible = is_visible	

