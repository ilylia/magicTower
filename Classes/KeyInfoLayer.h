#ifndef __KEYINFO_LAYER_H__
#define __KEYINFO_LAYER_H__

#include "cocos2d.h"
#include "GameData.h"

class CKeyInfoLayer : public cocos2d::Layer
{
public:
	CKeyInfoLayer();

	virtual bool init();

	void updateShow(THeroDataType type);

	void setYellowKeyNum(int numKey);
	void setBlueKeyNum(int numKey);
	void setRedKeyNum(int numKey);

	CREATE_FUNC(CKeyInfoLayer);

private:
	cocos2d::LabelTTF* _numKeyYellow;
	cocos2d::LabelTTF* _numKeyBlue;
	cocos2d::LabelTTF* _numKeyRed;
};

#endif // __KEYINFO_LAYER_H__
