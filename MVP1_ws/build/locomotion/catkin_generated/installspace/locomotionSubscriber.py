#!/usr/bin/env python3

# Import required Python code.
import roslib
roslib.load_manifest('locomotion')
import rospy
import time
from locomotion_controller import *
from adafruit_servokit import ServoKit

# Import custom message data.
from locomotion.msg import move_command_data

# Create a callback function for the subscriber.
def callback(data, args):
    # Simply print out values in our custom message.
    rospy.loginfo(rospy.get_name() + " %s, moving leg %d", data.message, data.leg_id)
    
    if(data.move_type == 1):
      moveSet1(args)
      time.sleep(0.2)
      moveSet2(args)
    if(data.move_type == 0):
      stop(args)
# This ends up being the main while loop.
def listener(driver):
    # Get the ~private namespace parameters from command line or launch file.
    topic = rospy.get_param('~topic', 'L1_test_move')
    # Create a subscriber with appropriate topic, custom message and name of callback function.
    rospy.Subscriber(topic, move_command_data, callback, driver)
    # Wait for messages on topic, go to callback function when new messages arrive.
    rospy.spin()

# Main function.
if __name__ == '__main__':
    # Initialize the node and name it.
    rospy.init_node('locomotion_sub', anonymous = True)
    # Go to the main loop.
    pca1=ServoKit(channels=16)
    listener(pca1)
