#ifndef __GAME_LAYER_H__
#define __GAME_LAYER_H__

#include "cocos2d.h"
#include "GameData.h"

enum TInitMapType
{
	EInitMap,
	ELoadData,
	EUpStairs,
	EDownStairs
};

class CGameLayer : public cocos2d::Layer
{
public:
	CGameLayer();

public:
    virtual bool init();

	void reInitMap(TInitMapType type);

	void MoveTo(TDirectionType dir);

	bool TalkToNPC(int k);

	bool GetProps(int k);

	int getMonsterDamage(int k);
	bool FightTpMonster(int k);

    CREATE_FUNC(CGameLayer);

private:
	cocos2d::Sprite* _hero;
};

#endif // __GAME_LAYER_H__
