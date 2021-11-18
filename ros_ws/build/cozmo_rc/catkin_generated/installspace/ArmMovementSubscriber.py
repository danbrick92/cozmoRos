# Imports
import cozmo.robot
import rospy
from std_msgs.msg import Float64

# Globals
robot = None

# Functions
def move_cozmo_arms(message: Float64):
    """
    Move arms at desired speed
    """
    robot.move_lift(message.data)

def get_arm_movement(robo: cozmo.robot.Robot):
    """
    Subscribe to head movements topic
    """
    sub_handle = rospy.Subscriber("CozmoArmMovement", Float64, move_cozmo_arms, queue_size=1)
    global robot
    robot = robo
    rospy.spin()

def subscriber():
    """
    Purpose: Subscribes to arm movement topic
    """
    rospy.init_node('ArmMovementSubscriber', anonymous=True)
    cozmo.run_program(get_arm_movement)

if __name__ == '__main__':
    subscriber()
