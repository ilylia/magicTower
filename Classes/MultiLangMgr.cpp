#include "MultiLangMgr.h"
#include "platform/CCFileUtils.h"
#include "CCArray.h"
#include "CCDictionary.h"

using namespace std;

USING_NS_CC;

static CMultiLangMgr *_sharedMultiLangMgr = NULL;

CMultiLangMgr* CMultiLangMgr::getInstance()
{
	if (! _sharedMultiLangMgr)
	{
		_sharedMultiLangMgr = new CMultiLangMgr();
	}

	return _sharedMultiLangMgr;
}

void CMultiLangMgr::destroyInstance()
{
	do
	{
		if (_sharedMultiLangMgr)
		{
			delete _sharedMultiLangMgr;
			_sharedMultiLangMgr = NULL;
		}
	} while(false);
}

bool CMultiLangMgr::initMultiLangWithFile(const string& pszPlist)
{
	CCASSERT(pszPlist.size()>0, "plist filename should not be nullptr");

	string fullPath = FileUtils::getInstance()->fullPathForFilename(pszPlist);
	ValueVector vtStr = FileUtils::getInstance()->getValueVectorFromFile(fullPath);

	//只取中文先
	for (ValueVector::iterator itr = vtStr.begin(); itr != vtStr.end(); ++itr)
	{
		ValueMap& mapStr = itr->asValueMap();
		int nID = mapStr["id"].asInt();
		string str = mapStr["chs"].asString();
		_strMap[nID] = str;
	}

	return true;
}

string CMultiLangMgr::getStr(int nID)
{
	return _strMap[nID];
}

