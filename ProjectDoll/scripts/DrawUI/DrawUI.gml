function DrawUI(){
	
healthbar_width = 273;
healthbar_height = 16;
healthbar_x = 32;
healthbar_y = 20;
	
//Healthbar
draw_sprite(sBarBorder,0, healthbar_x, healthbar_y);

draw_sprite(sBarBackground,0, healthbar_x, healthbar_y);

draw_sprite_stretched(sManaBar,0,healthbar_x + 3 ,healthbar_y + 25,(global.Mana/global.MaxMana) * healthbar_width, healthbar_height);
draw_sprite_stretched(sHealthBar,0,healthbar_x + 3,healthbar_y+3,(global.Health/global.MaxHealth) * healthbar_width, healthbar_height);






//mana

}