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

bool CMultiLangMgr::initMultiLangWithFile(const std::string& pszPlist)
{
	CCASSERT(pszPlist.size()>0, "plist filename should not be nullptr");

	std::string fullPath = FileUtils::getInstance()->fullPathForFilename(pszPlist);
	ValueMap dict = FileUtils::getInstance()->getValueMapFromFile(fullPath);

	// TODO
}

