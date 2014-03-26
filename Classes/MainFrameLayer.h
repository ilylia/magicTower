#ifndef __MAINFRAME_LAYER_H__
#define __MAINFRAME_LAYER_H__

#include "cocos2d.h"
#include "GameLayer.h"
#include "HeroInfoLayer.h"
#include "KeyInfoLayer.h"
#include "MenuLayer.h"

class CMainFrameLayer : public cocos2d::Layer
{
public:
	CMainFrameLayer();
	~CMainFrameLayer();

    virtual bool init();  
    
    void menuCloseCallback(cocos2d::Ref* pSender);
    
    CREATE_FUNC(CMainFrameLayer);

private:
	cocos2d::Sprite* _background;
	CGameLayer* _gameLayer;
	CHeroInfoLayer* _heroInfoLayer;
	CKeyInfoLayer* _keyInfoLayer;
	CMenuLayer* _menuLayer;
};

#endif // __MAINFRAME_LAYER_H__
