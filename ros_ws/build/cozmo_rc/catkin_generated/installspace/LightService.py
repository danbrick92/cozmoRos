# Imports
import rospy
import cozmo
from cozmo_rc.srv import light_req
import time

# Globals
COLORS = {
    'red': cozmo.lights.red_light,
    'blue': cozmo.lights.blue_light,
    'green': cozmo.lights.green_light,
    'white': cozmo.lights.white_light,
    'none': cozmo.lights.off_light
}
color_chosen = None
SLEEP_TIME = 5

# Functions
def set_light(robot: cozmo.robot.Robot):
    """
    Performs the intended action
    """
    robot.set_all_backpack_lights(color_chosen)
    time.sleep(SLEEP_TIME)

def light(req):
    """
    Purpose: Sets light color
    """
    global color_chosen
    if req.red:
        color_chosen = COLORS['red']
    elif req.blue:
        color_chosen = COLORS['blue']
    elif req.green:
        color_chosen = COLORS['green']
    elif req.white:
        color_chosen = COLORS['white']
    else:
        color_chosen = COLORS['none']
    cozmo.run_program(set_light)

def service():
    """
    Purpose: Subcribes to topic and outputs correct backpack light color
    """
    rospy.init_node('LightService', anonymous=True)
    rospy.Service("CozmoLight", light_req, light)
    rospy.spin()

if __name__ == '__main__':
    service()

