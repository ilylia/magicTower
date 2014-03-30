#include "MenuLayer.h"
#include "MultiLangMgr.h"
#include "stringdef.h"

USING_NS_CC;

CMenuLayer::CMenuLayer()
	: _levelTitle(NULL)
{
}

bool CMenuLayer::init()
{
	//super init first
	if ( !Layer::init() )
	{
		return false;
	}

	Size sz(128, 96);
	this->setContentSize(sz);

	Sprite* background = Sprite::create("texture/road.png");
	if (background != NULL)
	{
		background->setPosition(sz.width / 2, sz.height / 2);
		Rect reFull(0, 0, sz.width, sz.height);
		background->setTextureRect(reFull);
		Texture2D::TexParams params = {
			GL_LINEAR,
			GL_LINEAR,
			GL_REPEAT,
			GL_REPEAT
		};
		background->getTexture()->setTexParameters(params);
		this->addChild(background);
	}

	std::string str = CMultiLangMgr::getInstance()->getStr(STR_GAME_LEVEL);
	_levelTitle = LabelTTF::create(str, "Arial", 24);
	if (_levelTitle != NULL)
	{
		_levelTitle->setPosition(Point(sz.width/2, sz.height - _levelTitle->getContentSize().height));
		this->addChild(_levelTitle, 1);
	}

	return true;
}

void CMenuLayer::setCurLevel(int level)
{
	std::string str = CMultiLangMgr::getInstance()->getStr(STR_GAME_LEVEL + level);
	_levelTitle->setString(str);
}
