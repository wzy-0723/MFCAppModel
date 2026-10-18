#include "FileUtil.h"

PathAppender& PathAppender::AppendChildPath(const std::string& strChildPath)
{
	m_strPath += "\\";
	m_strPath += strChildPath;
	return *this;
}

PathAppender& PathAppender::SetSourcePath(const std::string& strSourcePath)
{
	Clear();
	m_strPath = strSourcePath;
	return *this;
}