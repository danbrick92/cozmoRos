# Imports
import cozmo.robot
import rospy
from std_msgs.msg import Bool
import numpy as np

# Globals
pub_handle = None
loop_hz = None

def get_cozmo_cliff_status(robot: cozmo.robot.Robot):
    """
    Access Cozmo API to get current Cozmo image
    """
    while not rospy.is_shutdown():
        pub_handle.publish(robot.is_cliff_detected)
        loop_hz.sleep()

def publisher():
    """
    Purpose: Publishes whether or not Cozmo detects he is on a cliff or not
    """
    global pub_handle, loop_hz
    rospy.init_node('CliffPublisher', anonymous=True)
    pub_handle = rospy.Publisher("CozmoCliff", Bool, queue_size=1)
    loop_hz = rospy.Rate(1)
    cozmo.run_program(get_cozmo_cliff_status)

if __name__ == '__main__':
    publisher()
