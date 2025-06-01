randomize()

n_inicial_cards = 7
n_player_cards = 0
player_cards = [
	//[
		//noone,	// ID
		//0,		// color
		//0,		// number
		//0			// is_number
	//]
]

selected_card = [
	noone, // ID
	0, // color
	0, // number
	0 // is_number
]

p_cards_x = [
	room_width/2, // x_inicial para 1 carta
	685,
	653,
	621,
	589,
	557,
	525,
]
global.p_inicial_y = 705


//p_inicial_x = p_cards_x[n_inicial_cards-1]


tab = 0
cards_on_tab = [0]
tabs_visible = 0

getCards(n_inicial_cards, "player")
reloadXSpacing()


