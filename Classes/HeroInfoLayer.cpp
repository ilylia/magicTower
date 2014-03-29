#include "HeroInfoLayer.h"

USING_NS_CC;

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

	return true;
}
