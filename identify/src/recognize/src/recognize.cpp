//
// Created by nuaa on 23-6-28.
//
#include <iostream>
#include <thread>
#include <ros/ros.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <string>

using namespace cv;
Mat img_show;
void Image_cb(const sensor_msgs::ImageConstPtr &msg) {
    ros::Time start = ros::Time::now();
    try
    {
        cv_bridge::CvImagePtr cv_ptr;
        cv_ptr = cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::BGR8);
        img_show = cv_ptr ->image;
        cv::imshow("the image",img_show);
        waitKey(1);
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
    }
    std::cout << "Identify Latency: " << (ros::Time::now() - start).toSec() << "s" << std::endl;

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