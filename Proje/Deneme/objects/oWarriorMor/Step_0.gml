/// @description Insert description here
// You can write your code in this editor


//Düşman Degdiğinde Can gitsin

if (place_meeting(x,y,obj_player)) and (global.invin != true) {
	with (obj_player) {flash = 3}
  global.Can -= 10;
  global.invin = true;
  alarm[0] = 60;
}