

if(position_meeting(mouse_x, mouse_y, self)) {
	image_xscale = 2.5
	image_yscale = 2.5
}
else {
	image_xscale = 2
	image_yscale = 2
}


var selected_card = obj_controller.selected_card
if(position_meeting(mouse_x, mouse_y, self)
&& mouse_check_button_released(mb_left)){
	if(sprite_index == spr_button && (image_index == 0 || image_index == 1)) {
		if (image_index == 0) {
			playCard()
		}
		
		selected_card[0] = noone
		selected_card[1] = 0
		selected_card[2] = 0
		selected_card[3] = 0
		instance_destroy(global.play)
		instance_destroy(global.back)
		//layer_destroy_instances("buttons")
	}
	
	
	
	//show_debug_message(player_cards)
	//show_debug_message(selected_card)
}

if (position_meeting(mouse_x, mouse_y, self)
&& mouse_check_button_released(mb_left)) {
	if (sprite_index == spr_tab) {
		var cards_on_tab = obj_controller.cards_on_tab
		var tab = obj_controller.tab
		var player_cards = obj_controller.player_cards
		
		
		
		if (goto_next == 1 && array_length(cards_on_tab)-1 > tab) {
			obj_controller.tab++
		}
		else if (goto_next == 0 && tab != 0) {
			obj_controller.tab--
		}
		show_debug_message(tab)
		
		for (var i = 0; i < obj_controller.n_player_cards; i++) {
			var card = player_cards[i][0]
			card.x = 0
		}
		reloadXSpacing()
	}
}
		

	

	
	
	

	

