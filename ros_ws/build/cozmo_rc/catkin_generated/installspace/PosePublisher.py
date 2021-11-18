# Imports
import cozmo.robot
import rospy
from geometry_msgs.msg import Pose

# Globals
pub_handle = None
loop_hz = None

def get_cozmo_pose(robot: cozmo.robot.Robot):
    """
    Access Cozmo API to get current Cozmo pose
    """
    while not rospy.is_shutdown():
        pose = Pose()
        # Get position
        pose.position.x = robot.pose.position.x
        pose.position.y = robot.pose.position.y
        pose.position.z = robot.pose.position.z
        # Get orientation
        pose.orientation.x = robot.pose.rotation.q0
        pose.orientation.y = robot.pose.rotation.q1
        pose.orientation.z = robot.pose.rotation.q2
        pose.orientation.w = robot.pose.rotation.q3
        # Publish
        pub_handle.publish(pose)
        loop_hz.sleep()

def publisher():
    """
    Purpose: Publishes the current pose of Cozmo
    """
    global pub_handle, loop_hz
    rospy.init_node('PosePublisher', anonymous=True)
    pub_handle = rospy.Publisher("CozmoPose", Pose, queue_size=1)
    loop_hz = rospy.Rate(1)
    cozmo.run_program(get_cozmo_pose)

if __name__ == '__main__':
    publisher()
