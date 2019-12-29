#include "ros/ros.h"
#include <vector>
#include "geometry_msgs/PointStamped.h"
#include <iostream>
#include <actionlib/client/simple_action_client.h>
#include <move_base_msgs/MoveBaseAction.h>

#include "programmerings_projekt/Num.h"
#include <time.h>
#include <cstdio>
#include <cstdlib>
#include <math.h>
#include <actionlib/client/simple_action_client.h>



using namespace std;


struct VectorPoints{double x;
double y;};
//vector<VectorPoints> mypoints;
vector<geometry_msgs::Point> mypoints;

void getpoints(const programmerings_projekt::Num::ConstPtr& msg)
{
	if(mypoints.size()<= 1)
	{
	   mypoints = msg->pointarray;
	}

}

bool moveToGoal(double xGoal, double yGoal)
{
	//define a client to send goal requests to the move_base server through a SimpleActionClient
	actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> ac("move_base", true);

	//wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0)))
	{
		ROS_INFO("Waiting for the move_base action server to come up");
	}

	move_base_msgs::MoveBaseGoal goal;
	
	//set up the frame parameters
	goal.target_pose.header.frame_id = "map";
	goal.target_pose.header.stamp = ros::Time::now();

	// moving towards the goal
	cout << "xGoal: " << xGoal << endl;
	cout << "yGoal: " << yGoal << endl;

	goal.target_pose.pose.position.x =  xGoal;
	goal.target_pose.pose.position.y =  yGoal;
	goal.target_pose.pose.position.z =  0.0;
	goal.target_pose.pose.orientation.x = 0.0;
	goal.target_pose.pose.orientation.y = 0.0;
	goal.target_pose.pose.orientation.z = 0.0;
	goal.target_pose.pose.orientation.w = 1.0;

	ROS_INFO("Sending goal location ...");
	ac.sendGoal(goal);
	
	ac.waitForResult();


	if	(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
	{
		ROS_INFO("the robot has succeeded in reaching the destination");
		return true;
	}
	else
	{
		ROS_INFO("the robot has failed in reaching the destination");
		return false;
	}
}




int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "Listener");
  ros::NodeHandle nh;
 
  ros::Subscriber sub = nh.subscribe("coordinate_list", 10, getpoints);
  
  while(mypoints.size() < 1)
  {

  cout << "Waiting for subscriber:" << endl;   
  ros::spinOnce();

  }


  for (int i = 0; i < mypoints.size() && ros::ok(); i++)
    {	
		if(moveToGoal(mypoints[i].x, mypoints[i].y))
		{
			std::cout << "reached location:" << std::endl;
		}
		else
		{
			std::cout << "location: not reached going to next goal" << std::endl;
		}
    }



  return 0;	
}

