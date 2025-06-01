function opponentPlayCard(){
	
	var op_cards = obj_controller.opponent_cards
	var center_card = obj_controller.center_card
	
	var blocked = 1
	while (blocked) {
		for (var i = 0; i < obj_controller.n_opponent_cards; i++) {
			var op_card = op_cards[i][0]	
		
			blocked = 1
		
			if (!obj_controller.player_turn) {
				if (center_card[1] == op_card.color || center_card[2] == op_card.card_number
				|| op_card.color == 5) {
					obj_controller.n_opponent_cards--
					center_card[1] = op_card.color
					center_card[2] = op_card.card_number
					center_card[3] = op_card.is_number
				
				
				
					array_delete(op_cards, i, 1)
					instance_destroy(op_card.id)
					show_debug_message(op_cards)
				
					obj_controller.player_turn = 1
					blocked = 0
				
					reloadXSpacing()
					break
				}
			}
		}
		if (blocked) {
			getCards(1, "opponent")
			showCards()
			reloadXSpacing()
		}
	}
}