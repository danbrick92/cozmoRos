# Imports
import cozmo.robot
import rospy
from std_msgs.msg import Float64

# Globals
robot = None

# Functions
def move_cozmo_head(message: Float64):
    """
    Move head up or down at desired speed
    """
    robot.move_head(message.data)

def get_head_movement(robo: cozmo.robot.Robot):
    """
    Subscribe to head movements topic
    """
    sub_handle = rospy.Subscriber("CozmoHeadMovement", Float64, move_cozmo_head, queue_size=1)
    global robot
    robot = robo
    rospy.spin()

def subscriber():
    """
    Purpose: Subscribes to head movement topic
    """
    rospy.init_node('HeadMovementSubscriber', anonymous=True)
    cozmo.run_program(get_head_movement)

if __name__ == '__main__':
    subscriber()
