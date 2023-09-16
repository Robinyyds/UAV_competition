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
float d_value = 0,d_value1=0;
int cnt,i=0;
bool judge_dis(int i_pre,cv::Mat depth_pic){
    if(i_pre <10 && i_pre >=0){
        ushort sum = 0;
        ushort sum_cen = 0 ;
        for(int g = 0; g < 20;g++){
            sum_cen = sum_cen + depth_pic.at<ushort>({310+g,240});
            if(depth_pic.at<ushort>({310+g,240}) == 0)
                return false;
        }
        for(int g = 120; g < 140;g++){
            sum = sum + depth_pic.at<ushort>({g,240});
            if(depth_pic.at<ushort>({g,240}) == 0)
                return false;
        }
        float dist = float(sum)/20000,center = float(sum_cen)/20000;
        if(dist<0.4*center && dist!=0 && center!=0 ){
            std::cout<<"youtiaobian"<<std::endl;
            i ++ ;
            std::cout<<"i:"<<i<<std::endl;
            ushort dis = depth_pic.at<ushort>({340,240})/1000;
            std::cout<< "Value of depth_pic's pixel= "<<center<< "         "<<dist<<std::endl;
            return true;
        }else{
            return false;
        }
    }else if(i_pre >=10 && i_pre <13){
        ushort sum = 0;
        ushort sum_cen = 0 ;
        for(int g = 0; g < 20;g++){
            sum_cen = sum_cen + depth_pic.at<ushort>({310+g,240});
        }
        for(int g = 550; g > 530;g--){
            sum = sum + depth_pic.at<ushort>({g,240});
        }
        float dist = float(sum)/20000,center = float(sum_cen)/20000;
        if(dist<0.4*center && dist!=0 && center!=0 ){
            std::cout<<"zhaodaole\n\n"<<std::endl;
            i++;
            std::cout<<"i:"<<i<<std::endl;
            std::cout<< "Value of depth_pic's pixel= "<<center<< "         "<<dist<<std::endl;
            return true;
        }else{
            return false;
        }
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
    Point point,point1;
    point = {320,240};
    point1 = {600,240};
    ushort d,d1;
    d = depth_pic.at<ushort>(point);
    d1 = depth_pic.at<ushort>(point1);
    d_value = float(d)/1000 ;      //强制转换
    d_value1 = float(d1)/1000 ;      //强制转换
    if(judge_dis(i,depth_pic) )
    {
        if(i == 13)
            std::cout<<"turn!!!!!!!!!!!!"<<std::endl;
    }


    //ushort d = depth_pic.at<ushort>(point);           //读取深度值，数据类型为ushort单位为ｍｍ


    //std::cout<< "Value of depth_pic's pixel= "<<d_value<< "         "<<d_value1<<std::endl;



    std_msgs::UInt8 dis;
    dis.data = d_value * 1000;
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