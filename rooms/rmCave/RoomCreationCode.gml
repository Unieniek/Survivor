for  (i = 340; i > 20; i -= 25){


	//second loop for selecting a column in a choosen "y"
	for (j = 680; j > 20; j -=25){
		
		//third loop to determine what kind of rock will it be
		r = random(100);
		
		//generate stone
		if(r > 0 && r < 50){
  			if(random(10) > 9){
				x = j; 
				y = i;
				//generate tree
				instance_create_layer(x, y, "Instances", oStone )
			}
		}	
		//generate iron
		if(r > 50 && r < 70){
			if(random(10) > 9){
				x = j; 
				y = i;
				//generate tree
				instance_create_layer(x, y, "Instances", oIronOre )
			}
		}	
		//generate gold
		if(r > 70 && r < 85){
			if(random(10) > 9){
				x = j; 
				y = i;
				//generate tree
				instance_create_layer(x, y, "Instances", oGoldOre )
			}
		}
		//generate diamond
		if(r > 85 && r < 100){
			if(random(10) > 9){
				x = j; 
				y = i;
				//generate tree
				instance_create_layer(x, y, "Instances", oDiamondOre )
			}
		}
		
	}
 	
}