#include "ros/ros.h"
#include "projects_robotics/floatStamped.h"
#include "projects_robotics/odom_message.h"
#include "message_filters/subscriber.h"
#include "message_filters/time_synchronizer.h"
#include "message_filters/sync_policies/approximate_time.h"

#define _USE_MATH_DEFINES
#define STEERING_FACTOR 18.0
#define BASELINE 1.3
#define INTERAXIS 176.5


typedef message_filters::sync_policies::ApproximateTime<projects_robotics::floatStamped, projects_robotics::floatStamped, projects_robotics::floatStamped> MySyncPolicy;

typedef struct input_data
{
    double speed_L;
    double speed_R;
    double steer_angle;
}Data;

typedef struct pose
{
    double x;
    double y;
    double theta;
}Pose;

class odometry_car
{
private:

    //Data input1;
    Pose current_pose;
    double steering_factor;
    double baseline;
    double interaxis;
    double prev_theta;

    ros::NodeHandle pub_node;
    ros::Publisher odometry_pub;

public:
    odometry_car(double x, double y)
    {
        current_pose.x = x;
        current_pose.y = y;
        current_pose.theta = 0.0;
        prev_theta = 0.0;
        steering_factor = STEERING_FACTOR;
        baseline = BASELINE;
        interaxis = INTERAXIS;

        odometry_pub = pub_node.advertise<projects_robotics::odom_message>("/odom", 1000);

    }

    void differential_drive_compute(Data *input_topics)
    {
        // First approximation of dt
        double dt = 0.01;
        double omega = (input_topics->speed_R - input_topics->speed_L)/BASELINE;
        double speed = (input_topics->speed_R + input_topics->speed_L)/(2.0); 
        prev_theta = current_pose.theta;
        current_pose.theta +=  omega*dt;
        current_pose.x += (speed * (cos( (current_pose.theta + prev_theta)/2.0)) * dt);
        current_pose.y += (speed * (sin( (current_pose.theta + prev_theta)/2.0)) * dt);
    }

    void ackermann_model_compute(Data input_topics)
    {
        //compute
    }

    void set_odom_message(projects_robotics::odom_message *odom)
    {
        odom->x = current_pose.x;
        odom->y = current_pose.y;
        odom->theta = current_pose.theta;
    }

    void set_position(double x, double y)
    {
        current_pose.x = x;
        current_pose.y = y;
        current_pose.theta = 0.0;
        prev_theta = current_pose.theta;
    }

    void publish_odom(projects_robotics::odom_message odom)
    {
        odometry_pub.publish(odom);
    }

};


void chatterCallback(const projects_robotics::floatStamped::ConstPtr& msg1, const projects_robotics::floatStamped::ConstPtr& msg2, 
                    const projects_robotics::floatStamped::ConstPtr& msg3, odometry_car *odom_car, Data *input_topics)
{
    projects_robotics::odom_message odom_msg;
    double temp_steer_angle = (msg3->data/STEERING_FACTOR) * (M_PI/180.0);
    input_topics->speed_L = msg1->data;
    std::cout << input_topics->speed_L << " xxxxx " << std::endl;
    input_topics->speed_R = msg2->data;
    input_topics->steer_angle = (temp_steer_angle);
    std::cout << "speed L   " << msg1->header.stamp << "  " << msg1->data << std::endl;
    std::cout << "speed R   " << msg2->header.stamp << "  " << msg2->data << std::endl;
    std::cout << "steer   " << msg3->header.stamp << "  " << input_topics->steer_angle << std::endl;
    odom_car->differential_drive_compute(input_topics);
    odom_car->set_odom_message(&odom_msg);
    odom_car->publish_odom(odom_msg);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "listener");
    Data input;
    projects_robotics::odom_message odom_msg;
    odometry_car *odometry = NULL;
    odometry = new odometry_car(0.0, 0.0);
    ros::NodeHandle sub_node;
    ros::NodeHandle pub_node;
    std::cout << "hello " << std::endl;
    ros::Publisher odometry_pub = pub_node.advertise<projects_robotics::odom_message>("/odom", 50);

    message_filters::Subscriber<projects_robotics::floatStamped> sub1(sub_node, "/speedL_stamped", 1);
    message_filters::Subscriber<projects_robotics::floatStamped> sub2(sub_node, "/speedR_stamped", 1);
    message_filters::Subscriber<projects_robotics::floatStamped> sub3(sub_node, "/steer_stamped", 1);
    
    message_filters::Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), sub1, sub2, sub3);
    sync.registerCallback(boost::bind(&chatterCallback, _1, _2, _3, odometry, &input));
    
    ros::spin();
    return 0;
}