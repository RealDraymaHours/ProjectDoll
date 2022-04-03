// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveButtonMapping(){
ini_open("buttonmap.ini");

ini_write_real("ButtonMapping","Up", vk_up);
ini_write_real("ButtonMapping","Down", vk_down);
ini_write_real("ButtonMapping","Left", vk_left);
ini_write_real("ButtonMapping","Right", vk_right);
ini_write_real("ButtonMapping","Dash", vk_shift);
ini_write_real("ButtonMapping","Up", vk_up);

/*
ini_write_real("savegame", "s2inv5", obj_SummonInventory.inventory[5]);
ini_write_real("savegame", "s2inv6", obj_SummonInventory.inventory[6]);
ini_write_real("savegame", "s2inv7", obj_SummonInventory.inventory[7]);
ini_write_real("savegame", "s2inv8", obj_SummonInventory.inventory[8]);
ini_write_real("savegame", "s2inv9", obj_SummonInventory.inventory[9]);
ini_write_real("savegame", "s2inv10", obj_SummonInventory.inventory[10]);
ini_write_real("savegame", "s2inv11", obj_SummonInventory.inventory[11]);

kLeft        = keyboard_check(vk_left);
kRight       = keyboard_check(vk_right);
kUp          = keyboard_check(vk_up);
kDown        = keyboard_check(vk_down);
kJump        = keyboard_check_pressed(vk_space);
kJumpRelease = keyboard_check_released(vk_space);
kDash		 = keyboard_check(vk_lshift);

kAttackLight = keyboard_check(ord("A"));
kAttackHeavy = keyboard_check(ord("D"));

kAttackLightReleased = keyboard_check_released(ord("A"));
kAttackHeavyReleased = keyboard_check_released(ord("D"));

kRageArt     = keyboard_check(ord("W"));
*/

ini_close();
}


function LoadButtonMapping(){

ini_open("buttonmap.ini");
oPlayer.kMyLeft        = ini_read_real("ButtonMapping","Left",vk_left);
oPlayer.kMyRight       = ini_read_real("ButtonMapping","Right",vk_right);
oPlayer.kMyUp          = ini_read_real("ButtonMapping","Up",vk_up);
oPlayer.kMyDown        = ini_read_real("ButtonMapping","Down",vk_down);
oPlayer.kMyJump        = ini_read_real("ButtonMapping","Jump",vk_space);
oPlayer.kMyDash		 =   ini_read_real("ButtonMapping","Dash",vk_lshift);

oPlayer.kMyAttackLight = ini_read_real("ButtonMapping","Light",ord("S"));
oPlayer.kMyAttackHeavy = ini_read_real("ButtonMapping","Heavy",ord("D"));

oPlayer.kMyRageArt     = ini_read_real("ButtonMapping","Rage",ord("A"));

/*
obj_SummonInventory.inventory[5] = ini_read_real("savegame", "s2inv5", 0);
obj_SummonInventory.inventory[6] = ini_read_real("savegame", "s2inv6", 0);
obj_SummonInventory.inventory[7] = ini_read_real("savegame", "s2inv7", 0);
obj_SummonInventory.inventory[8] = ini_read_real("savegame", "s2inv8", 0);
obj_SummonInventory.inventory[9] = ini_read_real("savegame", "s2inv9", 0);
obj_SummonInventory.inventory[10] = ini_read_real("savegame", "s2inv10", 0);
obj_SummonInventory.inventory[11] = ini_read_real("savegame", "s2inv11", 0);
*/

ini_close();
}
