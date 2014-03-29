#include "HeroInfoLayer.h"

USING_NS_CC;

CHeroInfoLayer::CHeroInfoLayer()
	: _heroLevel(NULL)
	, _heroLife(NULL)
	, _heroAtk(NULL)
	, _heroDef(NULL)
	, _heroMoney(NULL)
	, _heroExp(NULL)
{
}

bool CHeroInfoLayer::init()
{
	//super init first
	if ( !Layer::init() )
	{
		return false;
	}

	Size sz(128, 160);
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

	Sprite* heroHead = Sprite::createWithSpriteFrameName("down.bmp");
	if (heroHead != NULL)
	{
		heroHead->setPosition(16, 144);
		this->addChild(heroHead);
	}

	LabelTTF* labelLevel = LabelTTF::create("ji", "Arial", 20);
	if (labelLevel != NULL)
	{
		labelLevel->setPosition(112, 144);
		this->addChild(labelLevel);
	}

	LabelTTF* labelLife = LabelTTF::create("life", "Arial", 20);
	if (labelLife != NULL)
	{
		labelLife->setPosition(24, 108);
		this->addChild(labelLife);
	}

	LabelTTF* labelAtk = LabelTTF::create("atk", "Arial", 20);
	if (labelAtk != NULL)
	{
		labelAtk->setPosition(24, 84);
		this->addChild(labelAtk);
	}

	LabelTTF* labelDef = LabelTTF::create("def", "Arial", 20);
	if (labelDef != NULL)
	{
		labelDef->setPosition(24, 60);
		this->addChild(labelDef);
	}

	LabelTTF* labelMoney = LabelTTF::create("money", "Arial", 20);
	if (labelMoney != NULL)
	{
		labelMoney->setPosition(24, 36);
		this->addChild(labelMoney);
	}

	LabelTTF* labelExp = LabelTTF::create("exp", "Arial", 20);
	if (labelExp != NULL)
	{
		labelExp->setPosition(24, 12);
		this->addChild(labelExp);
	}

	_heroLevel = LabelTTF::create("1", "Arial", 24);
	if (_heroLevel != NULL)
	{
		_heroLevel->setPosition(66, 144);
		this->addChild(_heroLevel);
	}

	_heroLife = LabelTTF::create("1000", "Arial", 24);
	if (_heroLife != NULL)
	{
		_heroLife->setPosition(88, 108);
		this->addChild(_heroLife);
	}

	_heroAtk = LabelTTF::create("10", "Arial", 24);
	if (_heroAtk != NULL)
	{
		_heroAtk->setPosition(88, 84);
		this->addChild(_heroAtk);
	}

	_heroDef = LabelTTF::create("10", "Arial", 24);
	if (_heroDef != NULL)
	{
		_heroDef->setPosition(88, 60);
		this->addChild(_heroDef);
	}

	_heroMoney = LabelTTF::create("0", "Arial", 24);
	if (_heroMoney != NULL)
	{
		_heroMoney->setPosition(88, 36);
		this->addChild(_heroMoney);
	}

	_heroExp = LabelTTF::create("0", "Arial", 24);
	if (_heroExp != NULL)
	{
		_heroExp->setPosition(88, 12);
		this->addChild(_heroExp);
	}

	return true;
}
