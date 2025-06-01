// lugar x, lugar y, quantas cartas você tem, quantas cartas comprar

function getCards(n_buy, type){
	var color = 0
	var card_number = 0
	var sprite_i = noone
	
	if (type == "player") {
		for(var a = 0; a < n_buy; a++){
			
		
			var especial_rate = irandom(99)
			if (especial_rate < 14) { // 14% de chance
	
				sprite_i = spr_especial
				card_number = irandom(1)
				color = 5
			
			}
			else {
				
				color = irandom(3)
				card_number = irandom(12)+1
				switch(color){
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
				}
			}
			
			var is_number = 1
			if(card_number > 10 || color == 5) {
				is_number = 0
			}
			
			
			instance_create_layer(0+65*a, 0, "cards", obj_card_collision)
			var card = instance_create_layer(0+65*a, 0, "cards", obj_card)
				
			card.sprite_index = sprite_i
			card.image_index = card_number
			card.color = color
			card.card_number = card_number
			card.is_number = is_number
			
			card.is_player = 1
			
			
			var player_cards = obj_controller.player_cards
			var cards_on_tab = obj_controller.cards_on_tab
			for(var i = 0; i < n_buy; i++) {
				obj_controller.n_player_cards++
				if (cards_on_tab[array_length(cards_on_tab)-1] == 7) {
					array_push(cards_on_tab, 0)
				}
				cards_on_tab[array_length(cards_on_tab)-1]++
				array_push(player_cards, [card.id, color, card_number, is_number])
				break
			}
		}
	}
	else if (type == "center") {
		color = irandom(3)
		card_number = irandom(9)+1
		switch(color){
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
		}
				
		var is_number = 1

		var card = instance_create_layer(room_width/2-1, room_height/2+32, "center", obj_card)
		var center_card = obj_controller.center_card
		
		card.color = color
		card.card_number = card_number
		card.is_number = is_number
		
		center_card[0] = card.id
		center_card[1] = color
		center_card[2] = card_number
		center_card[3] = is_number
		
		
	}
	else if (type == "opponent"){
		for(var a = 0; a < n_buy; a++){
			var especial_rate = irandom(99)
			if (especial_rate < 14) { // 14% de chance
	
				card_number = irandom(1)
				color = 5
			
			}
			else {
				
				color = irandom(3)
				card_number = irandom(12)+1

			}
			
			var is_number = 1
			if(card_number > 10 || color == 5) {
				is_number = 0
			}
			
			var card = instance_create_layer(0+65*a, 45, "cards", obj_card)
				
			card.sprite_index = spr_cover
			card.image_index = card_number
			card.image_angle = 180
			card.color = color
			card.card_number = card_number
			card.is_number = is_number
			
			card.is_player = 0
			
			
			var opponent_cards = obj_controller.opponent_cards
			for(var i = 0; i < n_buy; i++) {
				obj_controller.n_opponent_cards++
				array_push(opponent_cards, [card.id, color, card_number, is_number])
				break
			}
		}
	}
	
	
}