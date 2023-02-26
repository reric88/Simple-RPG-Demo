x += (timer * xspd) * mspd

timer -= countdown;

alarm_set(0, timer);
