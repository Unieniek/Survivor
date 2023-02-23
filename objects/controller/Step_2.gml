var _playerExists = instance_exists(oPlayer);
var _heldItem = noone;

if (_playerExists) _heldItem = oPlayer.heldItem;

with (oBreakableParent && oCave){
	depth = -bbox_bottom;
	if(_playerExists && _heldItem == id){
	depth -= 10;
	}
}