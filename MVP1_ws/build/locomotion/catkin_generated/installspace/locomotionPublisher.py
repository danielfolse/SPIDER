#!/usr/bin/env python3
import rospy
import roslib
roslib.load_manifest('locomotion')
from std_msgs.msg import String
from locomotion.msg import move_command_data
#from locomotion.cfg import locomotion_paramsConfig as ConfigType
#from dynamic_reconfigure.server import Server as DynamicReconfigureServer
import sys
class publishLocomotionMVP():
    def __init__(self):
        init_message = rospy.get_param('~message', 'stopped leg')
        rate = float(rospy.get_param('~rate', '1.0'))
        topic = rospy.get_param('~topic', 'L1_test_move')
        rospy.loginfo('rate = %d', rate)
        rospy.loginfo('topic = %s', topic)
        # Create a dynamic reconfigure server.
        #self.server = DynamicReconfigureServer(ConfigType, self.reconfigure)
        # Create a publisher for our custom message.
        pub = rospy.Publisher(topic, move_command_data, queue_size=10)
        # Set the message to publish as our custom message.
        msg = move_command_data()
        # Initialize message variables.
        msg.move_type = 1
        msg.leg_id = 0
        msg.message = init_message
        # Main while loop.
        while not rospy.is_shutdown():
            # Fill in custom message variables with values from dynamic reconfigure server.
            msg.message = "moving"
            msg.move_type = 1
            msg.leg_id = 0
            # Publish our custom message.
            pub.publish(msg)
            # Sleep for a while before publishing new messages. Division is so rate != period.
            if rate:
                rospy.sleep(1/rate)
            else:
                rospy.sleep(1.0)

    # Create a callback function for the dynamic reconfigure server.
    #def reconfigure(self, config, level):
        # Fill in local variables with values received from dynamic reconfigure clients (typically the GUI).
      #  self.message = config["message"]
      #  self.move_type = config["move_type"]
       # self.leg_id = config["leg_id"]
        # Return the new variables.
     #   return config

# Main function.
if __name__ == '__main__':
    # Initialize the node and name it.
    rospy.init_node('locomotion_pub', anonmyous=False)
    # Go to class functions that do all the heavy lifting. Do error checking.
    try:
        plMVP = publishLocomotionMVP()
    except rospy.ROSInterruptException: pass

