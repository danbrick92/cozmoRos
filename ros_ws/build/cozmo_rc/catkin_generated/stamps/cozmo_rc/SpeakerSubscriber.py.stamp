# Imports
import rospkg as rospy
from std_msgs.msg import String
import cozmo

# Functions
def speak(speech_data):
    """
    Purpose: Allows cozmo to speak whatever was published
    """
    text = speech_data.data
    cozmo.robot.Robot.say_text(text);

def subscriber():
    """
    Purpose: Subcribes to topic and outputs speech
    """
    rospy.init_node('SpeakerSubscriber', anonymous=True)
    rospy.Subscriber("CozmoSpeaker", String, speak)
    rospy.spin()

if __name__ == '__main__':
    subscriber()

