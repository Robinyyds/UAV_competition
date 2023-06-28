cmake_minimum_required(VERSION 3.0.2)
project(recognize)


add_compile_options(-std=c++14)
find_package(
        catkin REQUIRED COMPONENTS
        cv_bridge
        image_transport
        roscpp
        sensor_msgs
        std_msgs
        geometry_msgs
)
find_package(OpenCV 4 REQUIRED)
find_package(Ceres REQUIRED)
## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


#RelWithDebInfo
set(ROS_BUILD_TYPE Debug)
set(CMAKE_BUILD_TYPE Debug)

catkin_package(
        #  INCLUDE_DIRS include
        #  LIBRARIES windMill
        #  CATKIN_DEPENDS cv_bridge image_transport roscpp sensor_msgs std_msgs
        #  DEPENDS system_lib
)


include_directories(
        include
        ${catkin_INCLUDE_DIRS}
)

add_executable(
        ${PROJECT_NAME}_node
        src/recognize.cpp)

target_link_libraries(
        ${PROJECT_NAME}_node
        ${OpenCV_LIBRARIES}
        ${catkin_LIBRARIES}
)

