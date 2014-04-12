#include "GameData.h"
#include "cocos2d.h"
#include "MultiLangMgr.h"
#include "stringdef.h"

//��Ϸ����
//0 road
//1 wall
//2 door_yellow
//3 door_blue
//4 door_red
//5 door_boy
//6 key_yellow
//7 key_blue
//8 key_red
//9 stone_def
//10 stone_atk
//11 health_stone1
//12 health_stone2
//13 stairup
//14 stairdown
//19 water
//20 null
//21 shop_left
//22 shop
//23 shop_right
//24 fairy
//26 oldman_blue
//27 oldman_red
//34 stone_atk
//40 
//41 
//71 sword
//97 road->stairdown
//98 road->stairup
//99 hero
//115 jail
//...
//
static int g_gameMap[27][11][11] = {
	{
		{1, 20, 20, 20, 20, 13, 20, 20, 20, 20, 1},
		{1, 20, 20, 20, 20, 98, 20, 20, 20, 20, 1},
		{1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1},
		{1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1},
		{1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1},
		{1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1},
		{1, 1, 20, 20, 20, 0, 20, 20, 20, 1, 1},
		{1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1},
		{19, 1, 19, 1, 0, 24, 0, 1, 19, 1, 19},
		{19, 19, 19, 19, 19, 99, 19, 19, 19, 19, 19},
		{19, 19, 19, 19, 19, 0, 19, 19, 19, 19, 19},
	},
	{
		{13, 98, 6, 40, 41, 40, 0, 0, 0, 0, 0},
		{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
		{11, 0, 44, 2, 0, 1, 11, 6, 11, 1, 0},
		{6, 44, 10, 1, 0, 1, 11, 6, 11, 1, 0},
		{1, 2, 1, 1, 0, 1, 1, 1, 43, 1, 0},
		{6, 45, 0, 1, 0, 2, 63, 40, 42, 1, 0},
		{9, 0, 7, 1, 0, 1, 1, 1, 1, 1, 0},
		{1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0},
		{0, 45, 0, 1, 1, 4, 1, 1, 1, 2, 1},
		{11, 12, 6, 1, 8, 97, 0, 1, 6, 46, 7},
		{11, 34, 6, 1, 0, 14, 0, 1, 6, 6, 6},
	},
	{
		{14, 1, 0, 55, 0, 1, 10, 9, 6, 8, 1},
		{97, 1, 9, 1, 12, 1, 10, 9, 6, 7, 1},
		{0, 1, 6, 1, 6, 1, 10, 9, 6, 54, 1},
		{0, 1, 6, 1, 6, 1, 1, 1, 1, 2, 1},
		{0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1},
		{0, 1, 2, 1, 1, 2, 1, 1, 2, 1, 1},
		{0, 5, 0, 0, 0, 0, 1, 0, 54, 0, 1},
		{0, 1, 2, 1, 1, 3, 1, 115, 1, 115, 1},
		{0, 1, 6, 1, 12, 11, 1, 0, 1, 0, 1},
		{98, 1, 6, 1, 12, 11, 1, 0, 1, 0, 1},
		{13, 1, 10, 1, 12, 11, 1, 26, 1, 27, 1},
	},
	{
		{71, 41, 6, 1, 23, 22, 21, 1, 1, 1, 1},
		{41, 6, 0, 1, 0, 0, 0, 1, 0, 42, 0},
		{6, 44, 0, 1, 1, 2, 1, 1, 0, 1, 0},
		{1, 2, 1, 1, 0, 44, 0, 1, 6, 1, 41},
		{0, 0, 0, 1, 1, 1, 0, 1, 6, 1, 42},
		{40, 1, 0, 42, 41, 42, 0, 1, 6, 1, 41},
		{40, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0},
		{0, 0, 0, 0, 0, 1, 1, 2, 1, 1, 0},
		{1, 1, 1, 1, 42, 1, 41, 0, 41, 1, 0},
		{1, 0, 0, 0, 0, 1, 9, 42, 6, 1, 98},
		{14, 97, 1, 1, 1, 1, 10, 12, 6, 1, 13},
	},
	{
		{0, 43, 0, 1, 0, 25, 0, 1, 0, 43, 0},
		{2, 1, 2, 1, 0, 0, 0, 1, 2, 1, 2},
		{0, 1, 0, 1, 1, 115, 1, 1, 0, 1, 0},
		{0, 1, 44, 1, 48, 49, 48, 1, 44, 1, 0},
		{42, 1, 11, 1, 9, 48, 9, 1, 11, 1, 42},
		{42, 1, 11, 1, 1, 4, 1, 1, 11, 1, 42},
		{41, 1, 0, 1, 46, 47, 46, 1, 0, 1, 41},
		{0, 1, 0, 1, 10, 46, 10, 1, 0, 1, 0},
		{0, 1, 0, 1, 1, 3, 1, 1, 0, 1, 0},
		{98, 1, 0, 1, 6, 0, 6, 1, 0, 1, 97},
		{13, 1, 0, 43, 0, 0, 0, 43, 0, 1, 14},
	},
	{
		{36, 1, 11, 1, 12, 63, 0, 0, 63, 6, 7},
		{0, 1, 10, 1, 63, 0, 0, 0, 0, 63, 6},
		{48, 1, 0, 1, 45, 0, 1, 1, 2, 1, 1},
		{0, 2, 63, 1, 76, 45, 1, 0, 46, 45, 27},
		{48, 1, 0, 1, 1, 1, 1, 0, 0, 0, 45},
		{10, 1, 0, 0, 0, 42, 44, 0, 0, 0, 0},
		{9, 1, 1, 43, 1, 1, 1, 1, 0, 0, 0},
		{0, 26, 1, 43, 1, 0, 0, 0, 46, 47, 0},
		{1, 1, 1, 42, 1, 2, 1, 3, 1, 2, 1},
		{97, 0, 1, 0, 1, 42, 1, 9, 2, 98, 1},
		{14, 0, 42, 0, 0, 0, 1, 6, 1, 13, 1},
	},
	{
		{30, 56, 1, 9, 1, 6, 51, 39, 1, 12, 12},
		{56, 6, 1, 10, 1, 0, 6, 51, 1, 65, 12},
		{6, 49, 3, 0, 3, 49, 0, 6, 1, 0, 65},
		{0, 0, 1, 47, 1, 0, 0, 0, 1, 52, 0},
		{1, 1, 1, 4, 1, 1, 1, 1, 1, 2, 1},
		{0, 0, 64, 0, 6, 6, 6, 0, 64, 0, 0},
		{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
		{0, 1, 48, 2, 48, 0, 0, 0, 0, 0, 1},
		{0, 1, 2, 1, 2, 1, 1, 1, 1, 3, 1},
		{0, 1, 48, 1, 0, 0, 1, 1, 0, 97, 1},
		{0, 0, 0, 1, 13, 98, 2, 2, 0, 14, 1},
	},
	{
		{13, 98, 0, 0, 0, 0, 0, 0, 1, 1, 1},
		{1, 1, 0, 49, 1, 3, 1, 56, 0, 1, 1},
		{1, 0, 49, 9, 1, 50, 1, 10, 56, 0, 1},
		{0, 0, 1, 1, 1, 15, 1, 1, 1, 0, 0},
		{0, 0, 3, 50, 115, 32, 15, 50, 3, 0, 0},
		{0, 1, 1, 1, 1, 15, 1, 1, 1, 1, 0},
		{0, 1, 11, 10, 1, 50, 1, 9, 11, 1, 0},
		{0, 1, 6, 11, 1, 3, 1, 11, 6, 1, 0},
		{0, 1, 1, 7, 7, 12, 7, 7, 1, 1, 0},
		{0, 0, 1, 1, 1, 4, 1, 1, 1, 0, 0},
		{1, 0, 0, 2, 14, 97, 0, 2, 0, 0, 1},
	},
	{
		{14, 1, 0, 0, 0, 0, 1, 0, 6, 56, 0},
		{97, 1, 0, 1, 1, 2, 1, 2, 1, 1, 0},
		{0, 1, 0, 1, 0, 0, 3, 0, 0, 1, 10},
		{0, 1, 0, 1, 60, 1, 1, 1, 48, 1, 43},
		{48, 1, 0, 1, 11, 1, 13, 98, 0, 1, 43},
		{49, 1, 9, 1, 11, 1, 1, 1, 1, 1, 0},
		{48, 1, 43, 1, 0, 0, 0, 1, 0, 49, 0},
		{0, 1, 43, 1, 1, 1, 47, 1, 2, 1, 1},
		{0, 1, 0, 56, 0, 1, 56, 1, 0, 0, 0},
		{0, 1, 1, 1, 2, 1, 0, 1, 1, 1, 0},
		{0, 0, 60, 0, 0, 1, 0, 51, 50, 51, 0},
	},
	{
		{35, 6, 0, 1, 1, 1, 0, 0, 0, 1, 0},
		{6, 0, 66, 2, 0, 0, 0, 1, 0, 2, 56},
		{1, 2, 1, 1, 0, 1, 1, 1, 0, 1, 6},
		{0, 0, 0, 1, 0, 1, 97, 0, 0, 1, 6},
		{0, 0, 0, 4, 0, 1, 14, 1, 0, 1, 11},
		{1, 3, 1, 1, 0, 1, 1, 1, 0, 1, 1},
		{9, 52, 10, 1, 60, 1, 13, 1, 0, 1, 11},
		{1, 2, 1, 1, 0, 0, 98, 2, 0, 1, 6},
		{56, 11, 56, 1, 1, 3, 1, 1, 0, 1, 6},
		{7, 56, 11, 1, 65, 60, 65, 1, 0, 2, 56},
		{73, 7, 56, 2, 12, 65, 12, 1, 0, 1, 0},
	},
	{
		{0, 1, 1, 9, 66, 1, 66, 10, 1, 1, 0},
		{0, 0, 1, 1, 2, 1, 2, 1, 1, 0, 52},
		{0, 0, 0, 0, 0, 1, 0, 0, 0, 52, 12},
		{0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1},
		{48, 1, 0, 0, 6, 6, 6, 0, 0, 1, 6},
		{49, 1, 0, 1, 1, 1, 1, 2, 1, 1, 6},
		{48, 1, 0, 115, 97, 14, 1, 0, 2, 49, 0},
		{0, 1, 1, 1, 1, 1, 1, 2, 1, 1, 0},
		{0, 1, 11, 9, 10, 1, 0, 49, 0, 1, 6},
		{98, 1, 11, 9, 10, 4, 60, 1, 60, 1, 6},
		{13, 1, 11, 9, 10, 1, 7, 1, 7, 1, 11},
	},
	{
		{11, 1, 6, 1, 7, 1, 8, 1, 12, 78, 12},
		{11, 1, 6, 1, 7, 1, 8, 1, 68, 69, 68},
		{11, 1, 6, 1, 7, 1, 8, 1, 0, 68, 0},
		{2, 1, 2, 1, 2, 1, 2, 1, 1, 3, 1},
		{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
		{2, 1, 1, 3, 1, 1, 1, 3, 1, 1, 2},
		{9, 1, 0, 68, 12, 67, 12, 68, 0, 1, 10},
		{9, 1, 66, 1, 1, 1, 1, 1, 66, 1, 10},
		{9, 1, 66, 1, 23, 22, 21, 1, 66, 1, 10},
		{1, 1, 4, 1, 11, 0, 11, 1, 4, 1, 1},
		{14, 97, 0, 0, 0, 0, 0, 0, 0, 98, 13},
	},
	{
		{27, 9, 1, 0, 54, 55, 54, 0, 1, 12, 38},
		{10, 0, 1, 0, 1, 2, 1, 0, 1, 0, 12},
		{0, 0, 1, 0, 1, 55, 1, 0, 1, 0, 0},
		{0, 67, 1, 0, 1, 6, 1, 0, 1, 58, 0},
		{67, 61, 1, 0, 1, 6, 1, 0, 1, 57, 58},
		{1, 3, 1, 0, 1, 11, 1, 0, 1, 3, 1},
		{0, 0, 0, 0, 1, 11, 1, 0, 0, 0, 0},
		{1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1},
		{9, 67, 2, 68, 68, 69, 68, 68, 2, 67, 10},
		{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
		{13, 98, 0, 0, 0, 0, 0, 0, 0, 97, 14},
	},
	{
		{0, 67, 0, 0, 0, 0, 0, 1, 0, 61, 0},
		{0, 1, 1, 1, 1, 1, 2, 1, 0, 1, 0},
		{0, 1, 0, 0, 68, 0, 0, 1, 0, 1, 0},
		{12, 1, 4, 1, 1, 1, 0, 1, 0, 1, 0},
		{54, 1, 0, 0, 61, 1, 68, 1, 10, 1, 0},
		{55, 1, 0, 62, 15, 1, 69, 1, 10, 1, 0},
		{54, 1, 61, 115, 26, 1, 68, 1, 10, 1, 9},
		{0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 9},
		{0, 54, 0, 1, 0, 0, 0, 61, 0, 1, 9},
		{1, 1, 0, 1, 12, 1, 1, 1, 1, 1, 0},
		{14, 97, 0, 3, 98, 13, 1, 31, 62, 2, 0},
	},
	{
		{1, 0, 58, 36, 13, 98, 0, 0, 0, 0, 1},
		{1, 0, 12, 1, 1, 1, 1, 1, 12, 0, 1},
		{1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1},
		{1, 0, 1, 1, 1, 33, 1, 1, 1, 0, 1},
		{1, 0, 1, 1, 1, 115, 1, 1, 1, 0, 1},
		{1, 0, 11, 1, 1, 61, 1, 1, 11, 0, 1},
		{1, 0, 20, 20, 1, 62, 1, 20, 20, 0, 1},
		{1, 0, 20, 20, 1, 61, 1, 20, 20, 0, 1},
		{1, 0, 20, 20, 1, 3, 1, 20, 20, 0, 1},
		{1, 68, 69, 68, 3, 97, 3, 68, 69, 68, 1},
		{1, 1, 1, 1, 1, 14, 1, 1, 1, 1, 1},
	},
	{
		{0, 0, 0, 97, 14, 20, 13, 98, 0, 0, 0},
		{0, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0},
		{0, 20, 20, 1, 1, 1, 1, 1, 20, 20, 0},
		{0, 20, 1, 1, 26, 1, 27, 1, 1, 20, 0},
		{0, 20, 1, 1, 9, 1, 9, 1, 1, 20, 0},
		{0, 20, 1, 1, 10, 1, 10, 1, 1, 20, 0},
		{0, 20, 20, 1, 0, 1, 0, 1, 20, 20, 0},
		{0, 20, 20, 1, 2, 1, 2, 1, 20, 20, 0},
		{0, 20, 20, 20, 0, 0, 0, 20, 20, 20, 0},
		{0, 20, 20, 20, 20, 4, 20, 20, 20, 20, 0},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	},
	{
		{20, 20, 20, 20, 20, 97, 14, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 0, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 0, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 1, 4, 1, 20, 20, 20, 20},
		{20, 20, 20, 1, 26, 119, 1, 1, 20, 20, 20},
		{20, 20, 20, 1, 1, 53, 1, 1, 20, 20, 20},
		{20, 20, 20, 1, 1, 98, 1, 1, 20, 20, 20},
		{20, 20, 20, 1, 1, 13, 1, 1, 20, 20, 20},
		{20, 20, 20, 20, 1, 1, 1, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
	},
	{
		{20, 58, 62, 0, 0, 0, 0, 0, 0, 0, 58},
		{20, 62, 20, 20, 20, 20, 20, 20, 20, 20, 0},
		{20, 0, 20, 58, 0, 0, 0, 0, 0, 0, 58},
		{20, 0, 20, 0, 20, 20, 20, 20, 20, 20, 20},
		{20, 0, 20, 0, 20, 58, 0, 0, 0, 58, 20},
		{20, 0, 20, 58, 0, 0, 20, 20, 20, 0, 20},
		{20, 0, 20, 20, 20, 20, 20, 58, 0, 58, 20},
		{20, 62, 20, 20, 20, 14, 20, 0, 20, 20, 20},
		{20, 58, 62, 0, 70, 97, 20, 58, 0, 0, 58},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0},
		{13, 98, 70, 0, 0, 0, 0, 0, 0, 0, 58},
	},
	{
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 1, 1, 1, 20, 20, 20, 20},
		{20, 20, 20, 1, 1, 28, 1, 1, 20, 20, 20},
		{20, 20, 20, 1, 1, 115, 1, 1, 20, 20, 20},
		{20, 20, 20, 1, 1, 4, 1, 1, 20, 20, 20},
		{20, 20, 20, 20, 1, 4, 1, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{14, 97, 0, 0, 0, 0, 0, 0, 0, 98, 0},
	},
	{
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
		{0, 20, 0, 20, 20, 20, 20, 20, 0, 20, 0},
		{0, 20, 0, 20, 20, 20, 20, 20, 0, 20, 0},
		{0, 20, 0, 20, 20, 13, 20, 20, 0, 20, 0},
		{0, 20, 0, 20, 20, 98, 20, 20, 0, 20, 0},
		{0, 20, 53, 20, 20, 0, 20, 20, 53, 20, 0},
		{0, 20, 115, 20, 20, 59, 20, 20, 115, 20, 0},
		{0, 20, 75, 20, 20, 129, 20, 20, 80, 20, 0},
		{0, 20, 20, 20, 20, 0, 20, 20, 20, 20, 0},
		{0, 20, 20, 20, 20, 0, 20, 20, 20, 20, 0},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 14},
	},
	{
		{70, 10, 50, 11, 62, 8, 62, 11, 50, 10, 70},
		{12, 20, 6, 20, 7, 20, 7, 20, 6, 20, 12},
		{20, 9, 50, 0, 58, 0, 58, 0, 50, 9, 20},
		{11, 20, 6, 20, 0, 14, 0, 20, 6, 20, 11},
		{62, 7, 58, 0, 0, 97, 0, 0, 58, 7, 62},
		{8, 20, 0, 20, 0, 20, 0, 20, 0, 20, 8},
		{62, 7, 58, 0, 0, 98, 0, 0, 58, 7, 62},
		{11, 20, 6, 20, 0, 0, 0, 20, 6, 20, 11},
		{20, 9, 50, 0, 58, 0, 58, 0, 50, 9, 20},
		{12, 20, 6, 20, 7, 20, 7, 20, 6, 20, 12},
		{70, 10, 50, 11, 62, 8, 62, 11, 50, 10, 70},
	},
	{
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 0, 0, 20, 59, 20, 0, 0, 20, 20},
		{20, 0, 0, 20, 20, 57, 20, 20, 0, 0, 20},
		{20, 0, 0, 0, 20, 57, 20, 0, 0, 0, 20},
		{20, 20, 0, 0, 0, 0, 0, 0, 0, 20, 20},
		{20, 20, 0, 0, 0, 97, 0, 0, 0, 20, 20},
		{20, 20, 20, 0, 0, 20, 0, 0, 20, 20, 20},
		{20, 20, 20, 20, 15, 14, 15, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20},
	},
	{
		{20, 20, 20, 20, 20, 14, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 20, 97, 20, 20, 20, 20, 20},
		{20, 20, 20, 20, 0, 0, 24, 20, 20, 20, 20},
		{15, 15, 15, 20, 20, 4, 20, 20, 15, 15, 15},
		{10, 10, 15, 20, 20, 39, 20, 20, 15, 9, 9},
		{13, 10, 58, 4, 39, 98, 39, 4, 58, 9, 13},
		{10, 10, 15, 20, 20, 39, 20, 20, 15, 9, 9},
		{15, 15, 15, 20, 20, 4, 20, 20, 15, 15, 15},
		{20, 20, 20, 15, 15, 58, 15, 15, 20, 20, 20},
		{20, 20, 20, 15, 12, 12, 12, 15, 20, 20, 20},
		{20, 20, 20, 15, 12, 13, 12, 15, 20, 20, 20},
	},
	{
		{58, 0, 0, 10, 10, 10, 0, 0, 20, 0, 12},
		{0, 20, 20, 20, 20, 20, 20, 0, 3, 0, 20},
		{10, 20, 20, 57, 58, 58, 58, 0, 20, 0, 20},
		{10, 20, 20, 30, 20, 20, 20, 20, 20, 0, 20},
		{0, 57, 20, 20, 20, 20, 20, 20, 39, 0, 20},
		{20, 4, 59, 115, 202, 20, 20, 39, 3, 97, 14},
		{0, 57, 20, 20, 20, 20, 20, 20, 39, 0, 20},
		{10, 20, 20, 30, 20, 20, 20, 20, 20, 0, 20},
		{10, 20, 20, 57, 58, 58, 58, 0, 20, 0, 20},
		{0, 20, 20, 20, 20, 20, 20, 0, 3, 0, 20},
		{58, 0, 0, 10, 10, 10, 0, 0, 20, 0, 12},
	},
	{
		{12, 20, 20, 20, 20, 14, 20, 20, 20, 20, 12},
		{0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0},
		{20, 3, 20, 20, 36, 3, 36, 20, 20, 3, 20},
		{0, 0, 0, 20, 20, 36, 20, 20, 0, 0, 0},
		{0, 20, 58, 20, 20, 20, 20, 20, 58, 20, 0},
		{0, 20, 58, 20, 20, 20, 20, 20, 58, 20, 0},
		{11, 20, 58, 20, 20, 5, 20, 20, 58, 20, 11},
		{11, 20, 57, 31, 20, 115, 20, 31, 57, 20, 11},
		{11, 20, 20, 20, 20, 59, 20, 20, 20, 20, 11},
		{0, 20, 20, 20, 57, 4, 57, 20, 20, 20, 0},
		{58, 0, 12, 12, 0, 20, 0, 12, 12, 0, 58},
	},
	{
		{12, 0, 20, 0, 0, 0, 9, 9, 9, 0, 58},
		{20, 0, 3, 0, 20, 20, 20, 20, 20, 20, 0},
		{20, 0, 20, 0, 58, 58, 58, 57, 20, 20, 9},
		{20, 0, 20, 20, 20, 20, 20, 30, 20, 20, 9},
		{20, 0, 39, 20, 20, 20, 20, 20, 20, 57, 0},
		{14, 97, 3, 39, 20, 20, 203, 115, 59, 4, 20},
		{20, 0, 39, 20, 20, 20, 20, 20, 20, 57, 0},
		{20, 0, 20, 20, 20, 20, 20, 30, 20, 20, 9},
		{20, 0, 20, 0, 58, 58, 58, 57, 20, 20, 9},
		{20, 0, 3, 0, 20, 20, 20, 20, 20, 20, 0},
		{12, 0, 20, 0, 0, 0, 9, 9, 9, 0, 58},
	},
	{
		{19, 19, 19, 15, 15, 15, 15, 15, 19, 19, 19},
		{19, 19, 19, 15, 181, 182, 183, 15, 19, 19, 19},
		{19, 19, 19, 15, 184, 185, 186, 15, 19, 19, 19},
		{19, 19, 19, 15, 187, 188, 189, 15, 19, 19, 19},
		{19, 19, 19, 15, 15, 0, 15, 15, 19, 19, 19},
		{19, 12, 12, 12, 12, 57, 12, 12, 12, 12, 19},
		{19, 19, 19, 19, 19, 58, 19, 19, 19, 19, 19},
		{19, 19, 19, 30, 58, 59, 58, 30, 19, 19, 19},
		{19, 19, 19, 19, 19, 58, 19, 19, 19, 19, 19},
		{19, 19, 19, 19, 12, 57, 12, 19, 19, 19, 19},
		{19, 19, 19, 19, 19, 97, 19, 19, 19, 19, 19},
	},
};

static int g_monsterDataMap[33][5] = {
	{50, 20, 1, 1, 1},
	{70, 15, 2, 2, 2},
	{100, 20, 5, 3, 3},
	{200, 35, 10, 5, 5},
	{110, 25, 5, 5, 4},
	{150, 40, 20, 8, 6},
	{300, 75, 45, 13, 10},
	{450, 150, 90, 22, 19},
	{150, 65, 30, 10, 8},
	{550, 160, 90, 25, 20},
	{1300, 300, 150, 40, 35},
	{700, 250, 125, 32, 30},
	{500, 400, 260, 47, 45},
	{15000, 1000, 1000, 100, 100},
	{850, 350, 200, 45, 40},
	{900, 750, 650, 77, 70},
	{400, 90, 50, 15, 12},
	{1500, 830, 730, 80, 70},
	{1200, 980, 900, 88, 75},
	{30000, 1700, 1500, 250, 220},
	{250, 120, 70, 20, 17},
	{2000, 680, 590, 70, 65},
	{2500, 900, 850, 84, 75},
	{125, 50, 25, 10, 7},
	{100, 200, 110, 30, 25},
	{500, 115, 65, 15, 15},
	{900, 450, 330, 50, 50},
	{1200, 620, 520, 65, 75},
	{1250, 500, 400, 55, 55},
	{1500, 560, 460, 60, 60},
	{3100, 1150, 1050, 92, 80},
	{99999, 5000, 4000, 0, 0},
	{99999, 9999, 5000, 0, 0},
};


static CGameData* _sharedGameData = NULL;
static SHeroData _sharedHeroData;

CGameData* CGameData::getInstance()
{
	if (! _sharedGameData)
	{
		_sharedGameData = new CGameData();
	}

	return _sharedGameData;
}

void CGameData::destroyInstance()
{
	do
	{
		if (_sharedGameData)
		{
			delete _sharedGameData;
			_sharedGameData = NULL;
		}
	} while(false);
}

SHeroData* CGameData::getHeroData()
{
	return &_sharedHeroData;
}

int getValidLevel(int level)
{
	return ((level % 27) + 27) % 27;
}

const int* CGameData::getData(int level)
{
	return (const int*)g_gameMap[getValidLevel(level)];
}

const std::string& CGameData::getLevelName(int level)
{
	return CMultiLangMgr::getInstance()->getStr(STR_GAME_LEVEL + getValidLevel(level));
}

TSpriteType CGameData::getSpriteType(int k)
{
	if ((k >= 24 && k <= 28) || k == 22)
	{
		return ESpriteNpc;
	}
	else if ((k >= 40 && k <= 70) || (k >= 181 && k <= 189) || (k >= 191 && k <= 199))
	{
		return ESpriteMonster;
	}
	else if ((k >= 6 && k<=12) || (k >= 30 && k <= 39) || (k >= 71 && k <= 80) || (k >= 201 && k <= 203))
	{
		return ESpriteProps;
	}
	else
	{
		return ESpriteOther;
	}
}
