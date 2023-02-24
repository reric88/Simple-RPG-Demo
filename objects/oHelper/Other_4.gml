#region PLAYER & CAMERA ----------
if instance_exists(oPlayer){
x = oPlayer.x;
y = oPlayer.y;
oPlayer.persistent = true;
}
#endregion
// END PLAYER AND CAMERA ----------

/// Remember the players start position

if (room == rmPause) exit;

switch (roomstart) {
	case RETURN:
		room_goto(proom);
		break;
		
	case NEWROOM:
	default:
		if (instance_exists(oPlayer)){
		pxstart = oPlayer.x
		pystart = oPlayer.y
		proom = room;
		}

		break;
		
	case LOAD:
		debug_event("Game not saved. Not implemented");

		break;
		
		
	
}


roomstart = -1
room_persistent = true;
