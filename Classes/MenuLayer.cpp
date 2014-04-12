#include "MenuLayer.h"
#include "GameData.h"

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

	_levelTitle = LabelTTF::create("0", "Arial", 24);
	if (_levelTitle != NULL)
	{
		_levelTitle->setPosition(Point(sz.width/2, sz.height - _levelTitle->getContentSize().height));
		this->addChild(_levelTitle, 1);
	}

	return true;
}

void CMenuLayer::updateShow(THeroDataType type)
{
	switch (type)
	{
	case ELv:
		_levelTitle->setString(CGameData::getInstance()->getLevelName(CGameData::getHeroData()->lv));
		break;
	default:
		break;
	}
}

void CMenuLayer::showLevel()
{
	const std::string& str = CGameData::getInstance()->getLevelName(CGameData::getHeroData()->lv);
	_levelTitle->setString(str);
}
