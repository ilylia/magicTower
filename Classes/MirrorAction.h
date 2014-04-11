#ifndef __MIRROR_ACTION_H__
#define __MIRROR_ACTION_H__

#include "CCActionInterval.h"

/** @brief Blinks a Node object by modifying it's visible attribute
*/
class CC_DLL Mirror : public cocos2d::ActionInterval
{
public:
	/** creates the action */
	static Mirror* create(float duration, int times);

	//
	// Overrides
	//
	virtual Mirror* clone() const override;
	virtual Mirror* reverse(void) const override;
	virtual void update(float time) override;
	virtual void startWithTarget(cocos2d::Node *target) override;
	virtual void stop() override;

protected:
	Mirror() {}
	virtual ~Mirror() {}
	/** initializes the action */
	bool initWithDuration(float duration, int times);

	int _times;
	bool _originalState;

private:
	CC_DISALLOW_COPY_AND_ASSIGN(Mirror);
};

#endif // __MIRROR_ACTION_H__
