/*******************************************************************************
	Author						: JackyFu
	Email                   	: fusijie@vip.qq.com
	QQ  						: 754505629
	Blog						: http://blog.csdn.net/jackystudio
	All Rights Reserved
	
	This piece of code does not have any registered copyright and is free to be 
	used as necessary. The user is free to modify as per the requirements. As a
	fellow developer, all that I expect and request for is to be given the 
	credit for intially developing this reusable code by not removing my name as 
	the author.
*******************************************************************************/
#ifndef __MAINGAME_SCENE_H__
#define __MAINGAME_SCENE_H__

#include "cocos2d.h"
#include "MainFrameLayer.h"

USING_NS_CC;

class CMainGameScene : public Scene
{
public:
	CMainGameScene(void);
	~CMainGameScene(void);

	virtual bool init();

	CREATE_FUNC(CMainGameScene);

private:
	CMainFrameLayer* _mainFrame;
};

#endif // __MAINGAME_SCENE_H__
