/// @description base stats
state = "IDLE";
SubState = "JUMP"
PrevState = "IDLE";
Name = "Nostro, the eternal jailer";

Health = 1500;
MaxHealt = 1500;

Active = false;
Knockback = false;
Stunned = false;

PlayerX = 0;
StartY = self.y;
Bullets = 0;


Phase2 = false;	
StunnedAmount = 10;

ReleaseStuff = false;
Staggered = false;
StaggerTime = 10;
Poise = 100;

MaxFinishMeter = 200;
FinisherMeterRegenTime = 10;

Color = make_color_rgb(102,45,145);
