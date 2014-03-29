#ifndef __MULTI_LANG_MGR_H__
#define __MULTI_LANG_MGR_H__

#include "CCMap.h"

class CMultiLangMgr
{
public:
	static CMultiLangMgr* getInstance(void);
	static void destroyInstance();

protected:
	CMultiLangMgr(){}

public:
    bool initMultiLangWithFile(const std::string& plist);

public:
	std::string getStr(int nID);

private:
	cocos2d::Map<int, std::string> _strMap;
};

#endif // __MULTI_LANG_MGR_H__
