#ifndef __GAME_DATA_H__
#define __GAME_DATA_H__


enum TSpriteType
{
	ESpriteNpc,
	ESpriteMonster,
	ESpriteProps,
	ESpriteOther,
};

class CGameData
{
public:
	static CGameData* getInstance(void);
	static void destroyInstance();

protected:
	CGameData(){}

public:
	const int* getData(int level);

	TSpriteType getSpriteType(int k);

private:
};

#endif __GAME_DATA_H__
