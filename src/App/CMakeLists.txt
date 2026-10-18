cmake_minimum_required(VERSION 3.21.0)
project(MFCApplication)
 
set(CMAKE_MFC_FLAG 2) # 1: use static MFC library; 2: use shared MFC library

# 递归搜索源码
file(GLOB_RECURSE head *.h *.hpp)
file(GLOB_RECURSE cpp *.cpp *.c)
file(GLOB_RECURSE res *.h *.rc *.rc2 *.ico)

set(all_sourcefile ${head} ${cpp} ${res})
set(cur_path "./")
source_group_by_dir(all_sourcefile ${cur_path})
 
add_executable(${PROJECT_NAME} WIN32
    ${all_sourcefile}
)

# 链接库
target_link_libraries(${PROJECT_NAME} 
	Common
)


target_include_directories(${PROJECT_NAME} PUBLIC
	./
	./dlg
	./control
	${src_dir_path}/Common
)

CONFIG_OUTPUT_PATHS(${PROJECT_NAME})

# set install path
set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/install/${CMAKE_BUILD_TYPE}" CACHE PATH "" FORCE)
message(STATUS "cmake_install_prefix: ${CMAKE_INSTALL_PREFIX}")
install(TARGETS ${PROJECT_NAME} DESTINATION ${CMAKE_INSTALL_PREFIX})