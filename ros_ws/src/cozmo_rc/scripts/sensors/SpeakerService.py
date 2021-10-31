# Imports
import rospy
import cozmo
from cozmo_rc.srv import speaker_req

# Globals
speech = ""

# Functions
def speak(robot: cozmo.robot.Robot):
    """
    Performs the intended action
    """
    robot.say_text(speech).wait_for_completed()

def speaker(req):
    """
    Purpose: Allows cozmo to speak whatever was published
    """
    global speech
    speech = req.data
    cozmo.run_program(speak)

def service():
    """
    Purpose: Subcribes to topic and outputs speech
    """
    rospy.init_node('SpeakerService', anonymous=True)
    rospy.Service("CozmoSpeaker", speaker_req, speaker)
    rospy.spin()

if __name__ == '__main__':
    service()

