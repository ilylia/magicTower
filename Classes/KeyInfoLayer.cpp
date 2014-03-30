#include "KeyInfoLayer.h"
#include "MultiLangMgr.h"
#include "stringdef.h"

USING_NS_CC;

CKeyInfoLayer::CKeyInfoLayer()
	: _numKeyYellow(NULL)
	, _numKeyBlue(NULL)
	, _numKeyRed(NULL)
{
}

bool CKeyInfoLayer::init()
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

	std::string str = CMultiLangMgr::getInstance()->getStr(STR_NUM_UNIT);
	Sprite* keyYellow = Sprite::createWithSpriteFrameName("mt_06.png");
	if (keyYellow != NULL)
	{
		keyYellow->setPosition(16, 80);
		this->addChild(keyYellow);
	}
	_numKeyYellow = LabelTTF::create("0", "Arial", 24);
	if (_numKeyYellow != NULL)
	{
		_numKeyYellow->setPosition(64, 80);
		this->addChild(_numKeyYellow);
	}
	LabelTTF* label1 = LabelTTF::create(str, "Arial", 24);
	if (label1 != NULL)
	{
		label1->setPosition(112, 80);
		this->addChild(label1);
	}

	Sprite* keyBlue = Sprite::createWithSpriteFrameName("mt_07.png");
	if (keyBlue != NULL)
	{
		keyBlue->setPosition(16, 48);
		this->addChild(keyBlue);
	}
	_numKeyBlue = LabelTTF::create("0", "Arial", 24);
	if (_numKeyBlue != NULL)
	{
		_numKeyBlue->setPosition(64, 48);
		this->addChild(_numKeyBlue);
	}
	LabelTTF* label2 = LabelTTF::create(str, "Arial", 24);
	if (label2 != NULL)
	{
		label2->setPosition(112, 48);
		this->addChild(label2);
	}

	Sprite* keyRed = Sprite::createWithSpriteFrameName("mt_08.png");
	if (keyRed != NULL)
	{
		keyRed->setPosition(16, 16);
		this->addChild(keyRed);
	}
	_numKeyRed = LabelTTF::create("0", "Arial", 24);
	if (_numKeyRed != NULL)
	{
		_numKeyRed->setPosition(64, 16);
		this->addChild(_numKeyRed);
	}
	LabelTTF* label3 = LabelTTF::create(str, "Arial", 24);
	if (label3 != NULL)
	{
		label3->setPosition(112, 16);
		this->addChild(label3);
	}

	return true;
}

void CKeyInfoLayer::setYellowKeyNum(int numKey)
{
	if (_numKeyYellow == NULL)
	{
		return;
	}

	char cnum[4];
	_itoa(numKey, cnum, 10);
	_numKeyYellow->setString(cnum);
}

void CKeyInfoLayer::setBlueKeyNum(int numKey)
{
	if (_numKeyBlue == NULL)
	{
		return;
	}

	char cnum[4];
	_itoa(numKey, cnum, 10);
	_numKeyBlue->setString(cnum);
}

void CKeyInfoLayer::setRedKeyNum(int numKey)
{
	if (_numKeyRed == NULL)
	{
		return;
	}

	char cnum[4];
	_itoa(numKey, cnum, 10);
	_numKeyRed->setString(cnum);
}
