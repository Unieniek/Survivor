/// @description Insert description here
// You can write your code in this editor
hp = 4;
hpMax = hp;


//gui
hpHeight = 3;

if (distance_to_object(oPlayer)< 30 && layer_exists("Instances")){
instance_destroy(self);
}