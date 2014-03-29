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
	Dictionary* dicString = Dictionary::createWithContentsOfFile("string.plist");

	//SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/background.plist");
	SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/door.plist");
	SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/hero.plist");
	SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/monster.plist");
	SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/npc.plist");
	SpriteFrameCache::getInstance()->addSpriteFramesWithFile("texture/props.plist");
    
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

	////ui
	//ui::Widget* ui = GUIReader::getInstance()->widgetFromJsonFile("ui/mainFrameUI.json");
	//this->addChild(ui);

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

 //   /////////////////////////////
 //   // 2. add a menu item with "X" image, which is clicked to quit the program
 //   //    you may modify it.

 //   // add a "close" icon to exit the progress. it's an autorelease object
 //   auto closeItem = MenuItemImage::create(
 //                                          "CloseNormal.png",
 //                                          "CloseSelected.png",
 //                                          CC_CALLBACK_1(CMainFrameLayer::menuCloseCallback, this));
 //   
	//closeItem->setPosition(Point(origin.x + visibleSize.width - closeItem->getContentSize().width/2 ,
 //                               origin.y + closeItem->getContentSize().height/2));

 //   // create menu, it's an autorelease object
 //   auto menu = Menu::create(closeItem, NULL);
 //   menu->setPosition(Point::ZERO);
 //   this->addChild(menu, 1);

 //   /////////////////////////////
 //   // 3. add your codes below...

 //   // add a label shows "Hello World"
 //   // create and initialize a label
 //   
 //   auto label = LabelTTF::create("Hello World", "Arial", 24);
 //   
 //   // position the label on the center of the screen
 //   label->setPosition(Point(origin.x + visibleSize.width/2,
 //                           origin.y + visibleSize.height - label->getContentSize().height));

 //   // add the label as a child to this layer
 //   this->addChild(label, 1);

 //   // add "CMainFrameLayer" splash screen"
 //   auto sprite = Sprite::create("CMainGameScene.png");

 //   // position the sprite on the center of the screen
 //   sprite->setPosition(Point(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));

 //   // add the sprite as a child to this layer
 //   this->addChild(sprite, 0);
    
    return true;
}


void CMainFrameLayer::menuCloseCallback(Ref* pSender)
{
    Director::getInstance()->end();

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif
}
