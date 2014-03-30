#include "GameLayer.h"
#include "GameData.h"
#include <iosfwd>

using namespace std;

USING_NS_CC;

bool CGameLayer::init()
{
    //super init first
    if ( !Layer::init() )
    {
        return false;
    }

	Size sz(352, 352);
	this->setContentSize(sz);
    
    return true;
}

void CGameLayer::setLevel(int level)
{
	const int* gameData = CGameData::getInstance()->getData(level);
	if (gameData == NULL)
	{
		return;
	}
	
	stringstream ss;
	for (int i=0; i<11; ++i)
	{
		for (int j=0; j<11; ++j)
		{
			//sprite id
			int k = gameData[i*11+j];

			ss << "mt_";
			if (k < 10)
			{
				ss << "0" << k;
			}
			else if (k == 97 || k == 98)
			{
				ss << "00";
			}
			else
			{
				ss << k;
			}
			ss << ".png";
			string spriteName = ss.str();
			ss.str("");

			Sprite* sp = Sprite::createWithSpriteFrameName(spriteName);
			if (sp != NULL)
			{
				sp->setPosition(32*j + 16, 32*(10-i) + 16);
				this->addChild(sp);
			}
		}
	}
}

