#include "MainFrameLayer.h"
//#include "CocosGUI.h"
//#include "cocostudio/CocoStudio.h"

USING_NS_CC;
//using namespace cocostudio;

CMainFrameLayer::CMainFrameLayer()
	: _background(NULL)
	, _gameLayer(NULL)
	, _heroInfoLayer(NULL)
	, _keyInfoLayer(NULL)
	, _menuLayer(NULL)
{
}

CMainFrameLayer::~CMainFrameLayer()
{
}

// on "init" you need to initialize your instance
bool CMainFrameLayer::init()
{
    //super init first
    if ( !Layer::init() )
    {
        return false;
    }

	//cache
	CCSpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/mt.plist");
	//SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/background.plist");
	//SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/door.plist");
	//SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/hero.plist");
	//SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/monster.plist");
	//SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/npc.plist");
	//SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/props.plist");
    
    Size visibleSize = Director::getInstance()->getVisibleSize();
    Point origin = Director::getInstance()->getVisibleOrigin();

	//background
	_background = Sprite::create("texture/background.png");
	if (_background != NULL)
	{
		_background->setPosition(visibleSize.width / 2, visibleSize.height / 2);
		Rect reFull(0, 0, visibleSize.width, visibleSize.height);
		_background->setTextureRect(reFull);
		Texture2D::TexParams params = {
			GL_LINEAR,
			GL_LINEAR,
			GL_REPEAT,
			GL_REPEAT
		};
		_background->getTexture()->setTexParameters(params);
		this->addChild(_background);
	}

	//hero
	_heroInfoLayer = CHeroInfoLayer::create();
	if (_heroInfoLayer == NULL)
	{
		return false;
	}
	_heroInfoLayer->setPosition(32, 224);
	this->addChild(_heroInfoLayer);

	//key
	_keyInfoLayer = CKeyInfoLayer::create();
	if (_keyInfoLayer == NULL)
	{
		return false;
	}
	_keyInfoLayer->setPosition(32, 128);
	this->addChild(_keyInfoLayer);

	//menu
	_menuLayer = CMenuLayer::create();
	if (_menuLayer == NULL)
	{
		return false;
	}
	_menuLayer->setPosition(32, 32);
	this->addChild(_menuLayer);

	//game
	_gameLayer = CGameLayer::create();
	if (_gameLayer == NULL)
	{
		return false;
	}
	_gameLayer->setPosition(192, 32);
	this->addChild(_gameLayer);

	_gameLayer->setLevel(0);

    return true;
}


void CMainFrameLayer::menuCloseCallback(Ref* pSender)
{
    Director::getInstance()->end();

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif
}
