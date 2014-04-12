#include "GameLayer.h"
#include "GameData.h"
#include <iosfwd>
#include "MirrorAction.h"
#include "MainFrameLayer.h"

using namespace std;

USING_NS_CC;

CGameLayer::CGameLayer()
	: _hero(NULL)
{

}

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

void CGameLayer::reInitMap(TInitMapType type)
{
	int& lv = CGameData::getHeroData()->lv;
	const int* gameData = CGameData::getInstance()->getData(lv);
	if (gameData == NULL)
	{
		return;
	}

	this->removeAllChildren();

	//Texture2D* text = TextureCache::sharedTextureCache()->getTextureForKey();
	//SpriteBatchNode* bgSprites = SpriteBatchNode::createWithTexture();
	
	int initX = 0, initY = 0;
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
			else if (k == 97)
			{
				if (type == TInitMapType::EUpStairs)
				{
					initX = j;
					initY = i;
				}
				ss << "00";
			}
			else if (k == 98)
			{
				if (type == TInitMapType::EDownStairs)
				{
					initX = j;
					initY = i;
				}
				ss << "00";
			}
			else if (k == 99)
			{
				if (type == TInitMapType::EInitMap)
				{
					initX = j;
					initY = i;
				}
				ss << "00";
			}
			else if (k == 115)
			{
				ss << "15";
			}
			else if (k == 120)
			{
				ss << "20";
			}
			else if (k == 119 || k == 129 || k == 139 || k == 149
				 || k == 159 || k == 169 || k == 179)
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

			TSpriteType type = CGameData::getInstance()->getSpriteType(k);
			if (type == ESpriteNpc || type == ESpriteMonster)
			{
				string spriteName1 = spriteName;
				spriteName1.insert(spriteName1.length() - 4, "_1");
				Animation* animation = Animation::create();
				animation->setDelayPerUnit(0.2f);
				animation->addSpriteFrame(SpriteFrameCache::getInstance()->getSpriteFrameByName(spriteName));
				animation->addSpriteFrame(SpriteFrameCache::getInstance()->getSpriteFrameByName(spriteName1));
				Animate* animate = Animate::create(animation);
				sp->runAction(RepeatForever::create(animate));
			}

			if (k == 19 || k == 20)
			{
				Mirror* mir = Mirror::create(0.4f, 1);
				sp->runAction(RepeatForever::create(mir));
			}

		}
	}

	int& x = CGameData::getHeroData()->x;
	int& y = CGameData::getHeroData()->y;
	switch (type)
	{
	case EInitMap:
	case EUpStairs:
	case EDownStairs:
		x = initX;
		y = initY;
		break;
	}

	//
	{
		_hero = Sprite::createWithSpriteFrameName("mt_99.png");
		if (_hero != NULL)
		{
			_hero->setPosition(32 * x + 16, 32 * (10 - y) + 16);
			this->addChild(_hero);
		}
	}
}

void CGameLayer::MoveTo(TDirectionType dir)
{
	int deltaX = 0, deltaY = 0;
	switch (dir)
	{
	case EUp:
		deltaY = -1;
		break;
	case EDown:
		deltaY = 1;
		break;
	case ELeft:
		deltaX = -1;
		break;
	case ERight:
		deltaX = 1;
		break;
	default:
		return;
	}

	int& lv = CGameData::getHeroData()->lv;
	const int* gameData = CGameData::getInstance()->getData(lv);
	if (gameData == NULL)
	{
		return;
	}

	int& x = CGameData::getHeroData()->x;
	int& y = CGameData::getHeroData()->y;

	int xNew = x + deltaX;
	int yNew = y + deltaY;
	if (xNew < 0 || xNew > 10 || yNew < 0 || yNew > 10)
	{
		return;
	}

	int kNew = gameData[yNew * 11 + xNew];
	if (kNew == 1 || kNew == 19 || kNew == 20 || kNew == 29)
	{
		return;
	}

	TSpriteType type = CGameData::getInstance()->getSpriteType(kNew);
	if (type == ESpriteNpc)
	{
		TalkToNPC(kNew);
		return;
	}
	else if (type == ESpriteMonster)
	{
	}

	int k = gameData[y * 11 + x];
	x = xNew;
	y = yNew;
	_hero->setPosition(32*x + 16, 32*(10-y) + 16);

	if (k == 98 && kNew == 13)
	{
		//level++
		++lv;
		reInitMap(EUpStairs);
	}
	else if (k == 97 && kNew == 14)
	{
		//level--
		--lv;
		reInitMap(EDownStairs);
	}
}

bool CGameLayer::TalkToNPC(int k)
{
	return false;
}

bool CGameLayer::GetProps(int k)
{
	CMainFrameLayer* mainFrame = (CMainFrameLayer*)this->getParent();
	switch (k)
	{
	case 6:
		++CGameData::getHeroData()->numYellow;
		mainFrame->updateShow(EKeyYellow);
		break;
	case 7:
		++CGameData::getHeroData()->numBlue;
		mainFrame->updateShow(EKeyBlue);
		break;
	case 8:
		++CGameData::getHeroData()->numRed;
		mainFrame->updateShow(EKeyRed);
		break;
	case 9:
		CGameData::getHeroData()->def += 3;
		mainFrame->updateShow(EDEF);
		break;
	case 10:
		CGameData::getHeroData()->atk += 3;
		mainFrame->updateShow(EATK);
		break;
	case 11:
		CGameData::getHeroData()->life += 200;
		mainFrame->updateShow(ELife);
		break;
	case 12:
		CGameData::getHeroData()->life += 500;
		mainFrame->updateShow(ELife);
		break;
	case 30:
		CGameData::getHeroData()->level += 1;
		mainFrame->updateShow(ELevel);
		CGameData::getHeroData()->life += 1000;
		mainFrame->updateShow(ELife);
		CGameData::getHeroData()->atk += 10;
		mainFrame->updateShow(EATK);
		CGameData::getHeroData()->def += 10;
		mainFrame->updateShow(EDEF);
		break;
	case 31:
		CGameData::getHeroData()->level += 3;
		mainFrame->updateShow(ELevel);
		CGameData::getHeroData()->life += 3000;
		mainFrame->updateShow(ELife);
		CGameData::getHeroData()->atk += 30;
		mainFrame->updateShow(EATK);
		CGameData::getHeroData()->def += 30;
		mainFrame->updateShow(EDEF);
		break;
	case 36:
		++CGameData::getHeroData()->numYellow;
		mainFrame->updateShow(EKeyYellow);
		++CGameData::getHeroData()->numBlue;
		mainFrame->updateShow(EKeyBlue);
		++CGameData::getHeroData()->numRed;
		mainFrame->updateShow(EKeyRed);
		break;
	case 39:
		CGameData::getHeroData()->money += 300;
		mainFrame->updateShow(EMoney);
		break;
	case 71:
		CGameData::getHeroData()->atk += 10;
		mainFrame->updateShow(EATK);
		break;
	case 72:
		CGameData::getHeroData()->atk += 40;
		mainFrame->updateShow(EATK);
		break;
	case 73:
		CGameData::getHeroData()->atk += 70;
		mainFrame->updateShow(EATK);
		break;
	case 74:
		CGameData::getHeroData()->atk += 110;
		mainFrame->updateShow(EATK);
		break;
	case 75:
		CGameData::getHeroData()->atk += 150;
		mainFrame->updateShow(EATK);
		break;
	case 76:
		CGameData::getHeroData()->def += 10;
		mainFrame->updateShow(EDEF);
		break;
	case 77:
		CGameData::getHeroData()->def += 30;
		mainFrame->updateShow(EDEF);
		break;
	case 78:
		CGameData::getHeroData()->def += 85;
		mainFrame->updateShow(EDEF);
		break;
	case 79:
		CGameData::getHeroData()->def += 120;
		mainFrame->updateShow(EDEF);
		break;
	case 80:
		CGameData::getHeroData()->def += 190;
		mainFrame->updateShow(EDEF);
		break;
	default:
		return false;
	}

	return true;
}

bool CGameLayer::CanFightToMonster(int k)
{
	return false;
}

bool CGameLayer::FightTpMonster(int k)
{
	return false;
}
