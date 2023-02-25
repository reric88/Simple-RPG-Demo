#region LIFEFORM COLLISION ----------
if place_meeting(x + xspd, y, oWall) == true
	{
	xspd = 0;	
	}

if place_meeting(x, y + yspd, oWall) == true
	{
	yspd = 0;	
	}
	
	if place_meeting(x + xspd, y, oLifeform) == true
	{
	xspd = 0;	
	}

if place_meeting(x, y + yspd, oLifeform) == true
	{
	yspd = 0;	
	}
 #endregion
 // END LIFEFORM COLLISION ----------