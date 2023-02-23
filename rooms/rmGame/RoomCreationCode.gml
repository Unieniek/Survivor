//audio_play_sound(snSoundtrack, 1, true);




//world generation
//first loop for selecting row "y"
for (i = 1580; i > 20; i -= 20){


	//second loop for selecting a column in a choosen "y"
	for (j = 3180; j > 20; j -=20){
		//third loop to determine if the tree will apple tree or normal
		
		if(random(4) > 1){
			if(random(10) > 9){
				x = j; 
				y = i;
				//generate tree
				instance_create_layer(x, y, "Instances", oTree )
			}
		}else{
			if(random(10) > 9){
				x = j;
				y = i;
				//generate apple tree
				instance_create_layer(x, y, "Instances", oAppleTree)
			}
		}
 	}
}