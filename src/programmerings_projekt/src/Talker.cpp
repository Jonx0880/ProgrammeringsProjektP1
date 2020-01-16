#include "ros/ros.h"
#include "geometry_msgs/PointStamped.h"
#include <iostream>
#include <vector>
#include <math.h>
#include "programmerings_projekt/Num.h"

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
  ros::Publisher pub = nh.advertise<programmerings_projekt::Num>("coordinate_list", 1000);
  ros::Duration(10).sleep();
  
  while (true)
  {
    /* code */
  
  while (pointarray.size()<= 5)
  {
    cout << "click more points" << endl;
    ros::spinOnce();
  }
  
  ros::spinOnce();
  cout << "\nYour route consists of ";
  cout << pointarray.size();
  cout << " points \n";
  for (int i = 0; i < pointarray.size(); i++) {
      cout << "x: " << pointarray[i].x << " ";
      cout << "y: " << pointarray[i].y << " ";
      cout << "\n";
     
  }
 
  
 
  
  
  programmerings_projekt::Num msg;
   for (int i = 0; i < pointarray.size(); i++) {
     geometry_msgs::Point p;
   p.x = pointarray[i].x;
      p.y = pointarray[i].y;
      msg.pointarray.push_back(p);
   }
  
  pub.publish(msg);
  ros::spin();
  }
  return 0;

}
