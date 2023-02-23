// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_add(){
//item variable and it contains "1" (0) argument in an array
var _item = argument[0];
//count variable and it contains "2" (1) argument in an array
var _count = argument[1];

var _list = controller.invList;


//item already in the list?
var _listSize = ds_list_size(_list);

for (var i=0; i < _listSize; i++){

	//get array bruh kto kurwa wymyslil ze wstawienie "|" bedzie świetnym pomyslem 
	var _arr = _list[| i];
	
	//check item
	if(_arr[0] == _item){
		_arr[@ 1] += _count;
		return true;
		
	}
	
}
//INV_SIZE is a macro from init
if (_listSize >= INV_SIZE){
	return false;
}


 //create new array
 var _arr = [_item, _count];
 ds_list_add(_list,arr);

return true;
}