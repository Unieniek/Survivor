var _playerExists = instance_exists(oPlayer);
var _heldItem = noone;

if (_playerExists) _heldItem = oPlayer.heldItem;


with (all){
	depth = -bbox_bottom;
	if(_playerExists && _heldItem == id){
	depth -= 10;
	
	}	
}


//with (oCommandBox){
//depth -= 20;
//}
