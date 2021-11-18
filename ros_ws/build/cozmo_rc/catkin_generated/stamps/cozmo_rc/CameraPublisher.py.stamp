# Imports
import cozmo.robot
import rospy
from sensor_msgs.msg import Image
import numpy as np

# Globals
#image = None
pub_handle = None
loop_hz = None

def get_image_from_cozmo(robot: cozmo.robot.Robot):
    """
    Access Cozmo API to get current Cozmo image
    """
    robot.camera.image_stream_enabled = True
    image = None
    while not rospy.is_shutdown():
        # Get image
        image = robot.world.latest_image
        if image is not None:
            ros_img = convert_image_to_ros_format(image)
            # Publish
            pub_handle.publish(ros_img)
        loop_hz.sleep()

def convert_image_to_ros_format(img):
    """
    Takes the image outputted by Cozmo and converts it to an image
    """
    # Grab raw image data
    raw = img.raw_image
    rgb = raw.convert('RGB')
    # Create ros image
    ros_img = Image()
    ros_img.header.stamp = rospy.Time.now()
    ros_img.height = rgb.height
    ros_img.width = rgb.width
    ros_img.encoding = "rgb8"
    ros_img.is_bigendian = False
    ros_img.step = 3 * rgb.width
    ros_img.data = np.array(rgb).tobytes()
    return ros_img

def publisher():
    """
    Purpose: Publishes camera image data
    """
    global pub_handle, loop_hz
    rospy.init_node('CameraPublisher', anonymous=True)
    pub_handle = rospy.Publisher("CozmoCamera", Image, queue_size=10)
    loop_hz = rospy.Rate(1)
    cozmo.run_program(get_image_from_cozmo)

if __name__ == '__main__':
    publisher()
