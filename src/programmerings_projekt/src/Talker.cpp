#include "ros/ros.h"
#include "geometry_msgs/PointStamped.h"
#include <iostream>
#include <vector>
//#include <cstddef>
//#include <array>



using namespace std;

struct VectorPoints{double x;
double y;};
vector<VectorPoints> pointarray;

//To load map - rosrun map_server map_server editedmap.yaml

void PointStampedCallback(const geometry_msgs::PointStamped::ConstPtr& msg){
  double x = msg->point.x;
  double y = msg->point.y;
  ROS_INFO("x: %f,y: %f", x, y);
  VectorPoints currentPoint;
  currentPoint.x = x;
  currentPoint.y = y;
  pointarray.push_back(currentPoint);
}


int main(int argc, char **argv)
{
    
  cout << "Use publish points to define the xy coordinates of the points in the route you wish to create \n";
  
  ros::init(argc, argv, "talker");
  ros::NodeHandle nh;
  ros::Subscriber sub = nh.subscribe("clicked_point", 10, PointStampedCallback);
  
  ros::Duration(10).sleep();
  ros::spinOnce();
  cout << "\nYour route consists of ";
  cout << pointarray.size();
  cout << " points \n";
 
 
 
  for (int i = 0; i < pointarray.size(); i++) {
      cout << "x: " << pointarray[i].x << " ";
      cout << "y: " << pointarray[i].y << " ";
      cout << "\n";
  }
  
  //ros::Publisher pub = nh.advertise<programmerings_projekt::Num>("coordinate_list", 100);
   
  ros::spin();

  return 0;

}


