x += (timer * hspd) * mspd

timer -= countdown;

alarm_set(0, timer);
