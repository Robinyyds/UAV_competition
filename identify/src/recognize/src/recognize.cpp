//
// Created by nuaa on 23-6-28.
//
#include <iostream>
#include <thread>
#include <ros/ros.h>
#include <sensor_msgs/Image.h>
#include <string>

void Image_cb(const sensor_msgs::ImageConstPtr &msg) {

    std::cout<<"success!!!!!!"<<std::endl;

}
int main(int argc, char **argv) {
    ros::init(argc, argv, "recognize");
    ros::NodeHandle n;
    ros::Subscriber resultsSub = n.subscribe("/camera/color/image_raw", 1, &Image_cb);

    ros::Rate loop_rate(10);
    while (ros::ok()) {
        ros::spinOnce();
        loop_rate.sleep();
    }
}