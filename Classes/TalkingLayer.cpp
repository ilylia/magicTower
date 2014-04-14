#include "TalkingLayer.h"
#include "MultiLangMgr.h"
#include "stringdef.h"
#include <iosfwd>

using namespace std;

USING_NS_CC;

CTalkingLayer::CSentenceLayer::CSentenceLayer()
{
}

bool CTalkingLayer::CSentenceLayer::init()
{
	//super init first
	if ( !Layer::init() )
	{
		return false;
	}

	Size sz(200, 70);
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

	return true;
}

void CTalkingLayer::CSentenceLayer::setContent(string talkerHead, string talkerName, string talkContent)
{
	Sprite* head = Sprite::createWithSpriteFrameName(talkerHead);
	if (head != NULL)
	{
		head->setPosition(0, 32);
		this->addChild(head);
	}

	LabelTTF* name = LabelTTF::create(talkerName + ":", "Arial", 20);
	if (name != NULL)
	{
		name->setPosition(36, 48);
		this->addChild(name);
	}

	LabelTTF* content = LabelTTF::create(talkContent, "Arial", 20);
	if (content != NULL)
	{
		content->setAnchorPoint(ccp(0, 1));
		content->setPosition(36, 32);
		this->addChild(content);
	}
}

CTalkingLayer::CTalkingLayer()
	: _thisSentence(NULL)
	, _thatSentence(NULL)
{
}

bool CTalkingLayer::init()
{
	//super init first
	if ( !Layer::init() )
	{
		return false;
	}

	Size sz(256, 256);
	this->setContentSize(sz);

	_thisSentence = CSentenceLayer::create();
	if (_thisSentence != NULL)
	{
		_thisSentence->setAnchorPoint(ccp(1, 0));
		_thisSentence->setPosition(256, 0);
		_thisSentence->setVisible(false);
		this->addChild(_thisSentence);
	}

	_thatSentence = CSentenceLayer::create();
	if (_thatSentence != NULL)
	{
		_thatSentence->setAnchorPoint(ccp(0, 1));
		_thatSentence->setPosition(0, 256);
		_thatSentence->setVisible(false);
		this->addChild(_thatSentence);
	}

	return true;
}
