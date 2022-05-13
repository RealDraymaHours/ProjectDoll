/// @description 

image_xscale = oTut.image_xscale;
hsp = 12;

state = "STUNNED";

if image_xscale == 1
{
	myhf = -hsp;	
	myhb = hsp;
}
else
{
	myhf = hsp;	
	myhb = -hsp;
}

GoBack = false;
Parried = false;
