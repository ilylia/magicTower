#ifndef __MULTI_LANG_MGR_H__
#define __MULTI_LANG_MGR_H__

#include <map>

class CMultiLangMgr
{
public:
	static CMultiLangMgr* getInstance(void);
	static void destroyInstance();

protected:
	CMultiLangMgr(){}

public:
    bool initMultiLangWithFile(const std::string& plist);

	std::string getStr(int nID);

private:
	std::map<int, std::string> _strMap;
};

#endif // __MULTI_LANG_MGR_H__
