# Imports
import cozmo.robot
from cozmo.util import degrees
import rospy
from geometry_msgs.msg import Twist
import math

# Globals
robot = None
MAX_SPEED = 20

# Functions
def move_cozmo(message: Twist):
    """
    Convert linear and angular velocity to Cozmo movement
    """
    # Extract for/back motion and turn in place motion
    vel = (message.linear.x * 50)
    ang = message.angular.z * (180/math.pi)
    # Check if not doing anything, stop all movement
    if vel == 0 and ang == 0:
        robot.drive_wheels(1, 1) # Value 0 ignored by API, Value 1 is checked and stops Cozmo
    # Check if only turning in place
    elif vel == 0:
        robot.turn_in_place(degrees(ang))
    else:
        left_wheel = vel
        right_wheel = vel
        if ang>0: # going left
            right_wheel *= .5
        elif ang<0: # going right
            left_wheel *= .5
        robot.drive_wheels(left_wheel, right_wheel)

def get_movement(robo: cozmo.robot.Robot):
    """
    Subscribe to movements topic
    """
    sub_handle = rospy.Subscriber("CozmoMovement", Twist, move_cozmo, queue_size=1)
    global robot
    robot = robo
    rospy.spin()

def subscriber():
    """
    Purpose: Publishes camera image data
    """
    rospy.init_node('MovementSubscriber', anonymous=True)
    cozmo.run_program(get_movement)

if __name__ == '__main__':
    subscriber()
