//
// Created by nuaa on 23-6-28.
//
#include <iostream>
#include <thread>
#include <ros/ros.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/Float32.h>
#include <string>

using namespace cv;
Mat img_show;
ros::Publisher depthPub;
float d_value = 0;
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
void depth_imageCb(const sensor_msgs::ImageConstPtr& msg)
{

    try
    {
        cv_bridge::CvImagePtr cv_ptr2;
        cv_ptr2 = cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::TYPE_16UC1);
        Mat img_depth = cv_ptr2 ->image;
        cv::imshow("the depth_image",img_depth);
        waitKey(1);
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
    }

    cv_bridge::CvImagePtr Dest ;
    Dest = cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::TYPE_16UC1);
    cv::Mat depth_pic = Dest->image;
    Point point;
    point = {320,240};
    ushort d = depth_pic.at<ushort>(point);           //读取深度值，数据类型为ushort单位为ｍｍ
    d_value = float(d)/1000 ;      //强制转换
    std_msgs::UInt8 dis;
    dis.data = d_value * 1000;
    std::cout<< "Value of depth_pic's pixel= "<<dis.data<<std::endl;
    depthPub.publish(dis);
}


int main(int argc, char **argv) {
    ros::init(argc, argv, "recognize");
    ros::NodeHandle n;
    ros::Subscriber resultsSub = n.subscribe("/camera/rgb/image_raw", 20, &Image_cb);
    ros::Subscriber image_depth_sub_=n.subscribe("/camera/depth/image_raw", 20, &depth_imageCb);

    depthPub = n.advertise<std_msgs::UInt8>("/depth_data", 5);
    ros::Rate loop_rate(10);
    while (ros::ok()) {
        ros::spinOnce();
        loop_rate.sleep();
    }
}