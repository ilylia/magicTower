#ifndef __GAME_DATA_H__
#define __GAME_DATA_H__

#include <string>
#include <map>

enum TSpriteType
{
	ESpriteNpc,
	ESpriteMonster,
	ESpriteProps,
	ESpriteOther,
};

enum TDirectionType
{
	EUp,
	EDown,
	ELeft,
	ERight
};

enum THeroDataType
{
	ELevel = 1,
	ELife,
	EATK,
	EDEF,
	EMoney,
	EExp,

	EKeyYellow,
	EKeyBlue,
	EKeyRed,

	ELv,
	//EX,
	//EY,
};

struct SHeroData
{
	int level;
	int life;
	int atk;
	int def;
	int money;
	int exp;

	int numYellow;
	int numBlue;
	int numRed;

	int lv;
	int x;
	int y;
	TDirectionType dir;

	std::map<int, std::map<int, std::map<int, int> > > gotMT; // <lv, <x, <y, 1>>>

	SHeroData()
		: level(1), life(1000), atk(10), def(10), money(0), exp(0)
		, numYellow(0), numBlue(0), numRed(0)
		, lv(0), x(5), y(9), dir(EDown)
	{
	}
};

class CGameData
{
public:
	static CGameData* getInstance();
	static void destroyInstance();

	static SHeroData* getHeroData();

protected:
	CGameData(){}

public:
	const int* getData(int level);
	const std::string& getLevelName(int level);

	const int* getMonsterData(int k);

	TSpriteType getSpriteType(int k);

private:
};

#endif __GAME_DATA_H__
