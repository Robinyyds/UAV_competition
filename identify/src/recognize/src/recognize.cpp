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
int res = 0;

bool judge_dis(cv::Mat depth_pic){
    long left = 0,right = 0,_center = 0;
    for(int g = 0; g < 5;g++){
        left = left + depth_pic.at<ushort>({10+g,240});
    }
    for(int i = 0; i < 5;i++){
        right = right + depth_pic.at<ushort>({630-i,240});
    }
    for(int i = 0; i < 10;i++){
        _center = _center + depth_pic.at<ushort>({316+i,240});
    }
    _center = _center / 10+1000;
    const long side = 700,depth_min = 5000,depth_centre_max = 2000;
    std::cout<<left/5<<std::endl;
    if(abs(left - right) > side || left > depth_min || right > depth_min){
        return false;
    }else if (((left+right)/10)*3 > _center){
        return false;
    }else if(_center > depth_centre_max){
        return true;
    }else{
        return false;
    }
}
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
    //std::cout << "Identify Latency: " << (ros::Time::now() - start).toSec() << "s" << std::endl;

}
void depth_imageCb(const sensor_msgs::ImageConstPtr& msg)
{

    try
    {
        cv_bridge::CvImagePtr cv_ptr2;
        cv_ptr2 = cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::TYPE_16UC1);
        Mat img_depth = cv_ptr2 ->image;
        Mat depth_color;
        cv::convertScaleAbs(img_depth,depth_color,0.1,0);

        applyColorMap(depth_color,depth_color,COLORMAP_JET);
        cv::imshow("the depth_image",depth_color);
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
    //Point point,point1;
    //point = {320,240};
    //point1 = {600,240};
    //ushort d,d1;
    //d = depth_pic.at<ushort>(point);
    //d1 = depth_pic.at<ushort>(point1);
    //d_value = float(d)/1000 ;      //强制转换
    //d_value1 = float(d1)/1000 ;      //强制转换
    if(judge_dis(depth_pic) )
    {
            std::cout<<"turn!!!!!!!!!!!!"<<std::endl;
            res = 1;
    }


    //ushort d = depth_pic.at<ushort>(point);           //读取深度值，数据类型为ushort单位为ｍｍ


    //std::cout<< "Value of depth_pic's pixel= "<<d_value<< "         "<<d_value1<<std::endl;


    std::cout<<res<<std::endl;
    std_msgs::UInt8 dis;
    dis.data = res;
    depthPub.publish(dis);
}


int main(int argc, char **argv) {
    ros::init(argc, argv, "recognize");
    ros::NodeHandle n;
    ros::Subscriber resultsSub = n.subscribe("/d435/color/image_raw", 20, &Image_cb);
    ros::Subscriber image_depth_sub_=n.subscribe("/d435/aligned_depth_to_color/image_raw", 20, &depth_imageCb);

    depthPub = n.advertise<std_msgs::UInt8>("/depth_data", 5);
    ros::Rate loop_rate(10);
    while (ros::ok()) {
        ros::spinOnce();
        loop_rate.sleep();
    }
}