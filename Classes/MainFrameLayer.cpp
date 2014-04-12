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

	this->setKeyboardEnabled(true);

	_gameLayer->reInitMap(TInitMapType::EInitMap);
	_menuLayer->showLevel();

    return true;
}

void CMainFrameLayer::updateShow(THeroDataType type)
{
	switch (type)
	{
	case ELevel:
	case ELife:
	case EATK:
	case EDEF:
	case EMoney:
	case EExp:
		_heroInfoLayer->updateShow(type);
		break;
	case EKeyYellow:
	case EKeyBlue:
	case EKeyRed:
		_keyInfoLayer->updateShow(type);
		break;
	case ELv:
		_menuLayer->updateShow(type);
		break;
	default:
		break;
	}
}

void CMainFrameLayer::onKeyPressed(EventKeyboard::KeyCode keyCode, Event* event)
{
	switch (keyCode)
	{
	case EventKeyboard::KeyCode::KEY_F1:
		++CGameData::getHeroData()->lv;
		_gameLayer->reInitMap(TInitMapType::EUpStairs);
		_menuLayer->showLevel();
		break;
	case EventKeyboard::KeyCode::KEY_F2:
		--CGameData::getHeroData()->lv;
		_gameLayer->reInitMap(TInitMapType::EDownStairs);
		_menuLayer->showLevel();
		break;
	case EventKeyboard::KeyCode::KEY_W:
	case EventKeyboard::KeyCode::KEY_UP_ARROW:
		_gameLayer->MoveTo(EUp);
		break;
	case EventKeyboard::KeyCode::KEY_S:
	case EventKeyboard::KeyCode::KEY_DOWN_ARROW:
		_gameLayer->MoveTo(EDown);
		break;
	case EventKeyboard::KeyCode::KEY_A:
	case EventKeyboard::KeyCode::KEY_LEFT_ARROW:
		_gameLayer->MoveTo(ELeft);
		break;
	case EventKeyboard::KeyCode::KEY_D:
	case EventKeyboard::KeyCode::KEY_RIGHT_ARROW:
		_gameLayer->MoveTo(ERight);
		break;
	default:
		break;
	}
}

void CMainFrameLayer::onKeyReleased(EventKeyboard::KeyCode keyCode, Event* event)
{

}

void CMainFrameLayer::menuCloseCallback(Ref* pSender)
{
    Director::getInstance()->end();

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif
}
