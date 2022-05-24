/// @description Insert description here
// You can write your code in this editor  SlowMoZoom

if (event_data[? "message"] == "SlowMoZoom")
{
	CameraZoom(18,80);
}

if (event_data[? "message"] == "CameraReset")
{
	CameraZoom(5,20);
}
