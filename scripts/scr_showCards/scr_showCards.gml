function showCards(){
	var tab = obj_controller.tab
	var cards_on_tab = obj_controller.cards_on_tab
	var n_player_cards = obj_controller.n_player_cards
	var player_cards = obj_controller.player_cards
	var selected_card = obj_controller.selected_card
	
	for (var i = 0; i < n_player_cards; i++) {
		var card = player_cards[i][0]
		if (card != selected_card[0]) {
			card.is_visible = 0
		}
	}
	
	for (var i = 7*tab; i < 7*tab+cards_on_tab[tab]; i++) {
		var card = player_cards[i][0]
		card.is_visible = 1
	}
}