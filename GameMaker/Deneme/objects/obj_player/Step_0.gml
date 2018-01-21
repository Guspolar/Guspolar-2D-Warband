if(instance_exists(obj_textbox)) exit;

key_left = keyboard_check(vk_left) or keyboard_check(ord("A")); //Sol butona basıyomu
key_right = keyboard_check(vk_right) or keyboard_check(ord("D")); //sağ butona basıyomu
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));



var move = key_right - key_left;
hsp = move * walksp;

var movey = key_down - key_up;
vsp = movey * walksp;


//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) 
{
   while(!place_meeting(x+sign(hsp),y,oWall)) 
   {
     x = x + sign(hsp);
   }
   hsp = 0;
}
x = x + hsp

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
   while(!place_meeting(x,y+sign(vsp),oWall))
   {
     y = y + sign(vsp);
   }
   vsp = 0;
}
y = y + vsp