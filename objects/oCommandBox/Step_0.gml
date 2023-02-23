_message = keyboard_string;

x = oPlayer.x - 150;
y = oPlayer.y + 80;

if (oPlayer.x < 160){
x = (oPlayer.x - 150) + (160 - oPlayer.x);
}
if (oPlayer.x > 3040){
x = (oPlayer.x - 150) - (oPlayer.x - 3040);
}
if (oPlayer.y < 90){
	//y = 60 s = 75
y = (oPlayer.y + 80) + (90 - oPlayer.y );
}
if (oPlayer.y > 1510){
y = (oPlayer.y + 80) - (oPlayer.y - 1510);
}

