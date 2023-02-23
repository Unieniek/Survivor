// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_remove(){
//arg
var _pos = argument[0];

//remove
var _list = oController.invList;

_list [| _pos] = -1;

}