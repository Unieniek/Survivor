/// @description Create Inv UI

//dimensions
var _margin = 10;
//separation
var _sep = 4;
var _cellSize = 24;

//inventory items
var _sizeX = 6;
var _sizeY = 2;

//coordinates
var _invX = _margin;
var _invY = RES.HEIGHT - (_margin + _sep + _cellSize * _sizeY);

//create buttons
var _x = 0;
var _y = 0;

for (var i = 0; i < INV_SIZE; i++){
//button coordinates
var _buttonX = _invX + (_sep + _cellSize) * _x;
var _buttonY = _invY + (_sep + _cellSize) * _y;

//create a button
var _button = instance_create_depth(_buttonX, _buttonY, 0, oButtonInv);

//set properties
with (_button){
	slotID = i;
	
	width = _cellSize;
	height = _cellSize;

}
//move position
_x ++;

if (_x == _sizeX){
	_x = 0;
	_y ++;
}


}