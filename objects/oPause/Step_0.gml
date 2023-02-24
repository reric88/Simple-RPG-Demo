// Get input controls
sc_input();


if alarm[0] <= 0{
	if down{
		if menu_index < array_length(option)-1{
			menu_index ++;	
		} else {
			menu_index = 0;	
		}
		alarm[0] = 10;
	}
	
	if up{
		if menu_index > 0{
			menu_index --;	
		} else {
			menu_index = array_length(option)-1;	
		}
		alarm[0] = 10;
	}

	if attack{
		switch menu_index{
			
			case 0:
				oHelper.roomstart = RETURN;
				room_goto(oHelper.proom);
				
				break;
			
			case 1:
				
				break;
			
			case 2:
				debug_event("Game not saved. Not implemented.");
				//scr_savegame;
				break;
				
				/*
				case 2.1:
					scr_save_game(file1);
					break;
					
				case 2.2:
					scr_save_game(file2);
					break;
					
				case 2.3:
					scr_save_game(file3);
					break;
				*/
			
			case 3:
			//oHelper.roomstart = LOAD;
			room_goto(oHelper.proom);
			debug_event("Game not loaded. Not implemented.");
			
				break;
			
			case 4:
				game_end();
				break;
			
			default:
				
				break;
		}
		attack = false;
	}
	
	
}
