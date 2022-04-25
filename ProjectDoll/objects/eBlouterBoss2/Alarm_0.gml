/// @description base stats
state = "IDLE";
SubState = "JUMP"
PrevState = "IDLE";

Health = 2000;
Active = false;
Knockback = false;
Stunned = false;

PlayerX = 0;
StartY = self.y;

ReleaseStuff = false;
Staggered = false;
StaggerTime = 10;
Poise = 100;

MaxFinishMeter = 200;
FinisherMeterRegenTime = 10;

alarm[1] = 30;


