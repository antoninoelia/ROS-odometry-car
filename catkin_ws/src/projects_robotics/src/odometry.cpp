#include "ros/ros.h"
#include "projects_robotics/floatStamped.h"
#include "message_filters/subscriber.h"
#include "message_filters/time_synchronizer.h"
#include "message_filters/sync_policies/approximate_time.h"


typedef message_filters::sync_policies::ApproximateTime<projects_robotics::floatStamped, projects_robotics::floatStamped, projects_robotics::floatStamped> MySyncPolicy;



void chatterCallback(const projects_robotics::floatStamped::ConstPtr& msg1, const projects_robotics::floatStamped::ConstPtr& msg2, const projects_robotics::floatStamped::ConstPtr& msg3)
{
    std::cout << "speed L   " << msg1->header.stamp << "  " << msg1->data << std::endl;
    std::cout << "speed R   " << msg2->header.stamp << "  " << msg2->data << std::endl;
    std::cout << "steer   " << msg3->header.stamp << "  " << msg3->data << std::endl;
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "listener");

    ros::NodeHandle n;
    std::cout << "hello " << std::endl;
    message_filters::Subscriber<projects_robotics::floatStamped> sub1(n, "/speedL_stamped", 1);
    message_filters::Subscriber<projects_robotics::floatStamped> sub2(n, "/speedR_stamped", 1);
    message_filters::Subscriber<projects_robotics::floatStamped> sub3(n, "/steer_stamped", 1);
    
    message_filters::Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), sub1, sub2, sub3);
    sync.registerCallback(boost::bind(&chatterCallback, _1, _2, _3));
    ros::spin();
    return 0;
}