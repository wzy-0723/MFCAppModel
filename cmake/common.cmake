# 
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON) # 强制要求，不满足就报错
set(CMAKE_CXX_EXTENSIONS OFF) # 关闭编译器扩展（如GNU扩展，推荐开启OFF，标准C++）





#windows系统动态库生成lib文件命令
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)


# 设置支持VS工程文件夹# message(STATUS "set MSVC use folders")
if(MSVC)
	set_property(GLOBAL PROPERTY USE_FOLDERS ON)# 使项目中的源文件按 CMake 中定义的目录结构在 IDE 中分组显示
	add_compile_options(/MP)# 开启多处理器编译
	#add_compile_options("/source-charset:utf-8") #utf8告警
endif()

