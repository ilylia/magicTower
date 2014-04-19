#ifndef __TALKING_LAYER_H__
#define __TALKING_LAYER_H__

#include <string>
#include "cocos2d.h"
#include "GameData.h"

class CTalkingLayer : public cocos2d::Layer
{
	class CSentenceLayer : public cocos2d::Layer
	{
	public:
		CSentenceLayer();

		virtual bool init();

		void setContent(std::string talkerHead, std::string talkerName, std::string content);

		CREATE_FUNC(CSentenceLayer);

	private:
	};

public:
	CTalkingLayer();

	virtual bool init();

	void talkTo(int k);

	void talkNext();

	CREATE_FUNC(CTalkingLayer);

private:
	CSentenceLayer* _thisSentence;
	CSentenceLayer* _thatSentence;
};

#endif // __TALKING_LAYER_H__
