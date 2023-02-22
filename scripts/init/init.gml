// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
gml_pragma("global", "init()");

//constant value
enum ITEM {
	APPLE, DIAMOND, GOLD, IRON, LOG, STONE

}
global.itemSprite[ITEM.APPLE] = sAppleDrop;
global.itemSprite[ITEM.DIAMOND] = sDiamondDrop;
global.itemSprite[ITEM.GOLD] = sGoldDrop;
global.itemSprite[ITEM.IRON] = sIronDrop;
global.itemSprite[ITEM.LOG] = sLogDrop;
global.itemSprite[ITEM.STONE] = sStoneDrop;


//max number of items in inventory (macro is a global constant)
#macro INV_SIZE 12
}