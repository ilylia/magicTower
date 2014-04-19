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

	void updateShow(THeroDataType type);

	void onKeyPressed(cocos2d::EventKeyboard::KeyCode keyCode, cocos2d::Event* event);
	void onKeyReleased(cocos2d::EventKeyboard::KeyCode keyCode, cocos2d::Event* event);

	bool onTouchBegan(cocos2d::Touch* touch, cocos2d::Event* event);
	void onTouchMoved(cocos2d::Touch* touch, cocos2d::Event* event);
	void onTouchEnded(cocos2d::Touch* touch, cocos2d::Event* event);
    
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
