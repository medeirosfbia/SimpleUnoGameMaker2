function playCard(){
	var selected_card = obj_controller.selected_card
	var player_cards = obj_controller.player_cards
	var cards_on_tab = obj_controller.cards_on_tab
	
	for (var i = 0; i < array_length(player_cards); i++) {
		if (player_cards[i][0] == selected_card[0]){
			obj_controller.n_player_cards--
			cards_on_tab[array_length(cards_on_tab)-1]--
			if (cards_on_tab[array_length(cards_on_tab)-1] == 0 && array_length(cards_on_tab)-1 != 0) {
				if (array_length(cards_on_tab)-1 == obj_controller.tab && array_length(cards_on_tab)-1 > 0) {
					obj_controller.tab--
					show_debug_message(obj_controller.tab)
				}
				array_pop(cards_on_tab)	
				show_debug_message(cards_on_tab)
				
				if (array_length(cards_on_tab)-1 == 0 && obj_controller.tabs_visible) {
					instance_destroy(global.tab_previous)
					instance_destroy(global.tab_next)	
					obj_controller.tabs_visible = 0
				}
				
			}
			
			array_delete(player_cards, i, 1)
			instance_destroy(selected_card[0])
			
			reloadXSpacing()
		}
	}
}