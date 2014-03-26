#include "MainGameScene.h"

CMainGameScene::CMainGameScene()
	: _mainFrame(NULL)
{
}

CMainGameScene::~CMainGameScene(void)
{
}

bool CMainGameScene::init()
{
	bool bRet=false;
	do 
	{
		CC_BREAK_IF(!CCScene::init());
		_mainFrame=CMainFrameLayer::create();
		CC_BREAK_IF(!_mainFrame);
		this->addChild(_mainFrame);
		bRet=true;
	} while (0);

	return bRet;
}