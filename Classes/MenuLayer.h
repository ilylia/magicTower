#ifndef __MENU_LAYER_H__
#define __MENU_LAYER_H__

#include "cocos2d.h"

class CMenuLayer : public cocos2d::Layer
{
public:
	CMenuLayer();

	virtual bool init();

	void setCurLevel(int level);

	CREATE_FUNC(CMenuLayer);

private:
	cocos2d::LabelTTF* _levelTitle;
};

#endif // __MENU_LAYER_H__
