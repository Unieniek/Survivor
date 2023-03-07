//audio_play_sound(snSoundtrack, 1, true, 0.2);




//world generation
//first loop for selecting row "y"
for (i = 1580; i > 20; i -= 20){


	//second loop for selecting a column in a choosen "y"
	for (j = 3180; j > 20; j -=20){
		//third loop to determine if the tree will apple tree or normal
		var r = irandom(100);
		if(r > 60){
			if(random(10) > 9){
				x = j; 
				y = i;
				//generate tree
				instance_create_layer(x, y, "Instances", oTree )
			}
		}else if (r > 10 && r <= 60){
			if(random(10) > 9){
				x = j;
				y = i;
				//generate apple tree
				instance_create_layer(x, y, "Instances", oAppleTree)
			}
		
		
		}
 	}
}