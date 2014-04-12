#ifndef __MENU_LAYER_H__
#define __MENU_LAYER_H__

#include "cocos2d.h"
#include "GameData.h"

class CMenuLayer : public cocos2d::Layer
{
public:
	CMenuLayer();

	virtual bool init();

	void updateShow(THeroDataType type);

	void showLevel();

	CREATE_FUNC(CMenuLayer);

private:
	cocos2d::LabelTTF* _levelTitle;
};

#endif // __MENU_LAYER_H__
