noinput = false;

#region STATS ----------
hp = 5;
maxhp = hp;
stamina = 10
maxstamina = stamina;
xp = 0;
maxxp = 3;
level = 1;
attack = 1;
#endregion
// END STATS ----------



#region CAMERA ----------

if instance_exists(oPlayer){
	x = oPlayer.x;
	y = oPlayer.y;
}


#endregion
// END CAMERA ----------

#region Grab players position ----------
if (instance_exists(oPlayer)){
	opxstart = oPlayer.x
	opystart = oPlayer.y
} else {
	opxstart = 0;
	opystart = 0;
}
#endregion
// END GRAB PLAYERS POSITION ----------

#region PREVIOUS ROOM ----------
screenshot = -1;
proom = room;
roomstart = NEWROOM;
#endregion
// END PREVIOUS ROOM ----------