

#pragma once
#include <list>
#include <vector>
#include <string>
#include <map>

class PathAppender
{
public:
	void Clear() { m_strPath = ""; };
	std::string GetPath() { return m_strPath; };
	PathAppender& AppendChildPath(const std::string& strChildPath);
	PathAppender& SetSourcePath(const std::string& strSourcePath);

private:
	std::string m_strPath;
};
