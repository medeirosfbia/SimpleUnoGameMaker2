

if (position_meeting(mouse_x, mouse_y, self)) {
	image_xscale = 3.5
	image_yscale = 3.5
	comprar = 1

	
	if (mouse_check_button_released(mb_left)) {
		var cards_on_tab = obj_controller.cards_on_tab
		if (cards_on_tab[array_length(cards_on_tab)-1] == 7) {
			array_push(cards_on_tab, 0)
			createTabs()
		}
		getCards(1, "player")	
		reloadXSpacing()
	}
}
else {
	image_xscale = 3
	image_yscale = 3
	comprar = 0
}