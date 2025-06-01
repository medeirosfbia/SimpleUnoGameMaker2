function showCards(){
	var tab = obj_controller.tab
	var cards_on_tab = obj_controller.cards_on_tab
	var n_player_cards = obj_controller.n_player_cards
	var player_cards = obj_controller.player_cards
	var selected_card = obj_controller.selected_card
	
	var center_card = obj_controller.center_card
	
	var op_cards = obj_controller.opponent_cards
	var n_op_cards = obj_controller.n_opponent_cards
	
	for (var i = 0; i < n_player_cards; i++) {
		var card = player_cards[i][0]
		if (card != selected_card[0]) {
			card.is_visible = 0
		}
	}
	
	if (n_op_cards >= 7) {
		for (var i = 0; i < array_length(op_cards); i++) {
			var card = op_cards[i][0]
			if (i < 7) {
				card.is_visible = 1
			}
			else {
				card.is_visible = 0
			}
		}
	}
	
	for (var i = 7*tab; i < 7*tab+cards_on_tab[tab]; i++) {
		var card = player_cards[i][0]
		card.is_visible = 1
		
		if (obj_controller.player_turn) {
			if (center_card[1] == card.color || center_card[2] == card.card_number
			|| card.color == 5) {
				card.image_blend = c_white
				card.is_blocked = 0
			
			}
			else {
				card.image_blend = c_gray
				card.is_blocked = 1
			}
		}
		else {
			card.image_blend = c_gray
			card.is_blocked = 1
		}
	}
}