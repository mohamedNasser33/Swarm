#ifndef TRANSLATIONMATIX_H
#define TRANSLATIONMATIX_H
#include <ros/ros.h">
#include<"turtlesim//Pose.h">

class Translation {

   public:
          Translation();
          void Turtle1Pose(const turtlesim::Pose &pose );
          void Turtle1Pose2(const turtlesim::Pose &pose );
   private:

     ros::NodeHandle nh;
     ros::Subscriber turtle_pose1;
     ros::Subscriber turtle_pose2;
    float turtle1_pose_x;
    float  turtle1_pose_y ;
     float turtle2_pose_x
     float turtle1_pose_y

}
#   #endif