#ifndef __HEROINFO_LAYER_H__
#define __HEROINFO_LAYER_H__

#include "cocos2d.h"

class CHeroInfoLayer : public cocos2d::Layer
{
public:
	CHeroInfoLayer();

	virtual bool init();  

	CREATE_FUNC(CHeroInfoLayer);

private:
	cocos2d::LabelTTF* _heroLevel;
	cocos2d::LabelTTF* _heroLife;
	cocos2d::LabelTTF* _heroAtk;
	cocos2d::LabelTTF* _heroDef;
	cocos2d::LabelTTF* _heroMoney;
	cocos2d::LabelTTF* _heroExp;

};

#endif // __HEROINFO_LAYER_H__
