# Install script for directory: /home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nuaa/turtle/Smart-Turtle-master/camera/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/msg" TYPE FILE FILES
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/msg/DeviceInfo.msg"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/msg/Extrinsics.msg"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/msg/Metadata.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/srv" TYPE FILE FILES
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/GetBool.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/SetBool.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/GetCameraInfo.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/GetCameraParams.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/GetDeviceInfo.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/GetInt32.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/GetString.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/SetInt32.srv"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/srv/SetString.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_camera-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/include/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/share/roseus/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/share/common-lisp/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/share/gennodejs/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib/python3/dist-packages/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib/python3/dist-packages/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_camera.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_camera-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES
    "/home/nuaa/turtle/Smart-Turtle-master/camera/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_cameraConfig.cmake"
    "/home/nuaa/turtle/Smart-Turtle-master/camera/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_cameraConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE FILE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib/liborbbec_camera.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so"
         OLD_RPATH "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/SDK/lib/x64:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_calib3d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_core:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_features2d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_flann:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_highgui:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ml:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_photo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stitching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_video:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videoio:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_aruco:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ccalib:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_datasets:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dpm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_face:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_freetype:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hdf:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hfs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_img_hash:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_optflow:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_plot:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_quality:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_reg:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_rgbd:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_saliency:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_shape:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stereo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_structured_light:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_text:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_tracking:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videostab:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_viz:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib/orbbec_camera/orbbec_camera_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node"
         OLD_RPATH "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/SDK/lib/x64:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_calib3d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_core:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_features2d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_flann:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_highgui:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ml:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_photo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stitching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_video:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videoio:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_aruco:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ccalib:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_datasets:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dpm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_face:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_freetype:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hdf:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hfs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_img_hash:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_optflow:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_plot:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_quality:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_reg:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_rgbd:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_saliency:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_shape:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stereo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_structured_light:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_text:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_tracking:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videostab:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_viz:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xphoto:/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib/orbbec_camera/list_devices_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node"
         OLD_RPATH "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/SDK/lib/x64:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_calib3d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_core:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_features2d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_flann:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_highgui:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ml:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_photo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stitching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_video:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videoio:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_aruco:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ccalib:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_datasets:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dpm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_face:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_freetype:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hdf:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hfs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_img_hash:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_optflow:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_plot:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_quality:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_reg:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_rgbd:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_saliency:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_shape:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stereo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_structured_light:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_text:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_tracking:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videostab:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_viz:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xphoto:/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib/orbbec_camera/ob_cleanup_shm_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node"
         OLD_RPATH "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/SDK/lib/x64:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_calib3d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_core:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_features2d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_flann:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_highgui:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ml:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_photo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stitching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_video:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videoio:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_aruco:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ccalib:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_datasets:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dpm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_face:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_freetype:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hdf:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hfs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_img_hash:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_optflow:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_plot:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_quality:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_reg:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_rgbd:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_saliency:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_shape:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stereo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_structured_light:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_text:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_tracking:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videostab:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_viz:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xphoto:/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib/orbbec_camera/list_depth_work_mode_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node"
         OLD_RPATH "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/SDK/lib/x64:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_calib3d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_core:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_features2d:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_flann:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_highgui:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_imgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ml:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_photo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stitching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_video:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videoio:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_aruco:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ccalib:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_datasets:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_dpm:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_face:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_freetype:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hdf:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_hfs:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_img_hash:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_optflow:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_plot:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_quality:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_reg:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_rgbd:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_saliency:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_shape:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_stereo:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_structured_light:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_superres:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_text:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_tracking:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_videostab:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_viz:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/opencv_xphoto:/home/nuaa/turtle/Smart-Turtle-master/camera/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orbbec_camera/" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orbbec_camera/" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/SDK/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/" TYPE DIRECTORY FILES "/home/nuaa/turtle/Smart-Turtle-master/camera/src/OrbbecSDK_ROS1/SDK/lib/x64/" FILES_MATCHING REGEX "/[^/]*\\.so$" REGEX "/[^/]*\\.so\\.[^/]*$")
endif()

