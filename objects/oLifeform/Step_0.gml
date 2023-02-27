#region LIFEFORM COLLISION ----------
if place_meeting(x + xspd + 1, y, oWall) == true
	{
	xspd = 0;	
	}

if place_meeting(x, y + yspd + 1, oWall) == true
	{
	yspd = 0;	
	}
	
	if place_meeting(x + xspd + 3, y, oLifeform) == true
	{
	xspd = 0;	
	}

if place_meeting(x, y + yspd + 3, oLifeform) == true
	{
	yspd = 0;	
	}
 #endregion
 // END LIFEFORM COLLISION ----------