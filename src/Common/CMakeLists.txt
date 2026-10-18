project(Common)

file(GLOB_RECURSE head *.h)
file(GLOB_RECURSE cpp *.cpp)
set(all_sourcefile ${head} ${cpp})

#
set(cur_path "./")
source_group_by_dir(all_sourcefile ${cur_path})


# ## 3rd
# include_directories(${glog_inc_dir_path})

# ## 3rd lib dir
# link_directories(${glog_lib_dir_path})
# ##

# ## my lib dir
# link_directories(${lib_dir_path})
# ##

add_library(${PROJECT_NAME} STATIC ${all_sourcefile})

# target_link_libraries(${PROJECT_NAME} 
	# ${glog_lib_name} 
# )

CONFIG_OUTPUT_PATHS(${PROJECT_NAME})

#set_target_properties(${PROJECT_NAME}
#	PROPERTIES RUNTIME_OUTPUT_DIRECTORY ""
#	ARCHIVE_OUTPUT_DIRECTORY ${lib_dir_path}
#	LIBRARY_OUTPUT_DIRECTORY ${lib_dir_path}
#)