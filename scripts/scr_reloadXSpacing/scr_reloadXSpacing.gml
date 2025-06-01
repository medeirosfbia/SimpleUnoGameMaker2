function reloadXSpacing(){
	var player_cards = obj_controller.player_cards
	var n_player_cards = obj_controller.n_player_cards
	var p_cards_x = obj_controller.p_cards_x
	
	var tab = obj_controller.tab
	var cards_on_tab = obj_controller.cards_on_tab
	
	//show_debug_message(7*tab)
	//show_debug_message(7*tab+cards_on_tab[tab])
	
	var a = 0
	for (var i = 7*tab; i < 7*tab+cards_on_tab[tab]; i++) {
		//show_debug_message(player_cards[i][0])
		//show_debug_message(card)
		//show_debug_message(card.x)
		var card = player_cards[i][0]
		card.x = p_cards_x[cards_on_tab[tab]-1]+65*a
		a++
	}
	
	var opponent_cards = obj_controller.opponent_cards
	var n_opponent_cards = obj_controller.n_opponent_cards
	
	var how_many = 0
	if (n_opponent_cards < 7) {	
		how_many = n_opponent_cards
	}
	else {
		how_many = 7	
	}
	
	for (var i = 0; i < how_many; i++) {
		//show_debug_message(player_cards[i][0])
		//show_debug_message(card)
		//show_debug_message(card.x)
		var card = opponent_cards[i][0]
		card.x = p_cards_x[how_many-1]+65*i
	}
	
	
	
}