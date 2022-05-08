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

function DrawBossHealthbar()
{
	healthbar_width = 691;
	healthbar_height = 16;
	healthbar_x = 0;
	healthbar_y = 560;
	
	draw_text_color(healthbar_x,healthbar_y -20, Name,c_white,c_white,c_white,c_white,1);

	draw_sprite(sBossHealthbarBackground,0, healthbar_x, healthbar_y);

	draw_sprite_stretched(sManaBar,0,healthbar_x + 3 ,healthbar_y + 22,(FinisherMeter/MaxFinishMeter) * healthbar_width, healthbar_height-12);
	draw_sprite_stretched(sHealthBar,0,healthbar_x + 3,healthbar_y+2,(Health/MaxHealt) * healthbar_width - 5, healthbar_height);


	draw_sprite(sBossHealthbar,0, healthbar_x, healthbar_y);
}

function DrawBossHealthbarCutscene(Caster)
{
	healthbar_width = 691;
	healthbar_height = 16;
	healthbar_x = 0;
	healthbar_y = 560;
	
	draw_text_color(healthbar_x,healthbar_y -20, Caster.Name,c_white,c_white,c_white,c_white,1);

	draw_sprite(sBossHealthbarBackground,0, healthbar_x, healthbar_y);

	draw_sprite_stretched(sManaBar,0,healthbar_x + 3 ,healthbar_y + 22,(Caster.FinisherMeter/Caster.MaxFinishMeter) * healthbar_width, healthbar_height-12);
	draw_sprite_stretched(sHealthBar,0,healthbar_x + 3,healthbar_y+2,(Caster.Health/Caster.MaxHealt) * healthbar_width - 5, healthbar_height);


	draw_sprite(sBossHealthbar,0, healthbar_x, healthbar_y);	
}

