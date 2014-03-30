#ifndef __GAME_DATA_H__
#define __GAME_DATA_H__

class CGameData
{
public:
	static CGameData* getInstance(void);
	static void destroyInstance();

protected:
	CGameData(){}

public:
	const int* getData(int level);

private:
};

#endif __GAME_DATA_H__
