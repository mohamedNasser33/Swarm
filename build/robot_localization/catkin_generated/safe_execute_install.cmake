execute_process(COMMAND "/home/moriarty/Desktop/Course_ws/build/robot_localization/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/moriarty/Desktop/Course_ws/build/robot_localization/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
