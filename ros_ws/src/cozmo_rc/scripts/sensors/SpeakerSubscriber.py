# Imports
import rospy
from std_msgs.msg import String
import cozmo

# Globals
speech = ""

# Functions
def speak(robot: cozmo.robot.Robot):
    """
    Performs the intended action
    """
    robot.say_text(speech).wait_for_completed()

def speaker(speech_data):
    """
    Purpose: Allows cozmo to speak whatever was published
    """
    global speech
    speech = speech_data.data
    cozmo.run_program(speak)

def subscriber():
    """
    Purpose: Subcribes to topic and outputs speech
    """
    rospy.init_node('SpeakerSubscriber', anonymous=True)
    rospy.Subscriber("CozmoSpeaker", String, speaker)
    rospy.spin()

if __name__ == '__main__':
    subscriber()

