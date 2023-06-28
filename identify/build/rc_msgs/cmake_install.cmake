# Install script for directory: /home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nuaa/turtle/Smart-Turtle-master/identify/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rc_msgs/msg" TYPE FILE FILES
    "/home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs/msg/point.msg"
    "/home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs/msg/detection.msg"
    "/home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs/msg/results.msg"
    "/home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs/msg/single_result.msg"
    "/home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs/msg/identify_results.msg"
    "/home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs/msg/calibrateResult.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rc_msgs" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/include/rc_msgs/stepConfigConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/rc_msgs" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/lib/python3/dist-packages/rc_msgs/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/lib/python3/dist-packages/rc_msgs/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/rc_msgs" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/lib/python3/dist-packages/rc_msgs/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rc_msgs/cmake" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/build/rc_msgs/catkin_generated/installspace/rc_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/include/rc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/share/roseus/ros/rc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/share/common-lisp/ros/rc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/share/gennodejs/ros/rc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/lib/python3/dist-packages/rc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/devel/lib/python3/dist-packages/rc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/build/rc_msgs/catkin_generated/installspace/rc_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rc_msgs/cmake" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/build/rc_msgs/catkin_generated/installspace/rc_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rc_msgs/cmake" TYPE FILE FILES
    "/home/nuaa/turtle/Smart-Turtle-master/identify/build/rc_msgs/catkin_generated/installspace/rc_msgsConfig.cmake"
    "/home/nuaa/turtle/Smart-Turtle-master/identify/build/rc_msgs/catkin_generated/installspace/rc_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rc_msgs" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/identify/src/rc_msgs/package.xml")
endif()

