#include "MirrorAction.h"
#include "CCSprite.h"

USING_NS_CC;

//
// Mirror
//

Mirror* Mirror::create(float duration, int times)
{
	Mirror *blink = new Mirror();
	blink->initWithDuration(duration, times);
	blink->autorelease();

	return blink;
}

bool Mirror::initWithDuration(float duration, int times)
{
	CCASSERT(times>=0, "times should be >= 0");

	if (ActionInterval::initWithDuration(duration) && times>=0)
	{
		_times = times;
		return true;
	}

	return false;
}

void Mirror::stop()
{
	Sprite* tar = (Sprite*)_target;
	tar->setFlippedY(_originalState);
	ActionInterval::stop();
}

void Mirror::startWithTarget(Node *target)
{
	Sprite* tar = (Sprite*)target;
	ActionInterval::startWithTarget(tar);
	_originalState = tar->isFlippedY();
}

Mirror* Mirror::clone(void) const
{
	// no copy constructor
	auto a = new Mirror();
	a->initWithDuration(_duration, _times);
	a->autorelease();
	return a;
}

void Mirror::update(float time)
{
	Sprite* tar = (Sprite*)_target;
	if (tar && ! isDone())
	{
		float slice = 1.0f / _times;
		float m = fmodf(time, slice);
		tar->setFlippedY(m > slice / 2 ? true : false);
	}
}

Mirror* Mirror::reverse() const
{
	return Mirror::create(_duration, _times);
}

