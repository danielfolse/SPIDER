import time
from tkinter import N
from adafruit_servokit import ServoKit
from adafruit_motor import servo
import threading


STOP_ELB_ANGLE = 150
STOP_VERT_ANGLE = 126
STOP_HORIZ_ANGLE = 90

VERT_UP_ANGLE = 141
VERT_DOWN_ANGLE = 126

HORIZ_FORW_ANGLE = 105
HORIZ_HALF_ANGLE = 90
HORIZ_BACK_ANGLE = 75

ELB_OUT_ANGLE = 135
ELB_HALF_ANGLE = 132
ELB_IN_ANGLE = 150

DELAY = 0.01

#0 HORIZ, 1 VERT, 2 ELB
# PCA1
# 0,1,2 Front Right
# 3,4,5 2nd set left

# PCA2
# 0,1,2 3rd set right
# 3,4,5 Back Left

# PCA3
# 0,1,2 Front Left
# 3,4,5 2nd set right

# PCA4
# 0,1,2 3rd set left
# 3,4,5 Back Right

class servoController:
  def __init__(self, address):
    self.N = 6
    self.rest_pos = [STOP_HORIZ_ANGLE, STOP_VERT_ANGLE, STOP_ELB_ANGLE,
                      STOP_HORIZ_ANGLE, STOP_VERT_ANGLE, STOP_ELB_ANGLE]
    self.driver = ServoKit(channels=16, address=address)
    
  def moveForwardFrontStroke(driver):
    moveHalfHoriz = threading.Thread(target=moveServo, args=(driver, 0, HORIZ_HALF_ANGLE))
    moveFullHoriz = threading.Thread(target=moveServo, args=(driver, 0, HORIZ_FORW_ANGLE))
    moveElb       = threading.Thread(target=moveServo, args=(driver, 2, ELB_OUT_ANGLE))
    moveVertUp    = threading.Thread(target=moveServo, args=(driver, 1, VERT_UP_ANGLE))
    moveVertDown  = threading.Thread(target=moveServo, args=(driver, 1, VERT_DOWN_ANGLE))

    moveVertUp.start()
    moveHalfHoriz.start()
    moveElb.start()

    moveVertUp.join()
    moveHalfHoriz.join()
    moveElb.join()

    moveFullHoriz.start()
    moveVertDown.start()

    moveFullHoriz.join()
    moveVertDown.join()
    return
  def moveForwardBackStroke(driver):
    moveHalfHoriz = threading.Thread(target=moveServo, args=(driver, 0, HORIZ_HALF_ANGLE))
    moveFullHoriz = threading.Thread(target=moveServo, args=(driver, 0, HORIZ_FORW_ANGLE))
    moveElbOut    = threading.Thread(target=moveServo, args=(driver, 2, ELB_OUT_ANGLE))
    moveElbIn     = threading.Thread(target=moveServo, args=(driver, 2, ELB_IN_ANGLE))

    moveHalfHoriz.start()
    moveElbIn.start()
    
    moveHalfHoriz.join()
    moveElbIn.join()

    moveFullHoriz.start()
    moveElbOut.start()

    moveFullHoriz.start()
    moveElbOut.start()
    return
  def stop(self):
    for i in range(self.N):
      self.driver.servo[i].angle = self.rest_pos(i)
  
    return
  def moveServo(driver, servo, goal_angle):
    for i in range(driver.servo[servo].angle, goal_angle, 1):
      driver.servo[servo].angle = i
      driver.servo[servo + 3].angle = i
      time.sleep(0.01)
    return
  def turnServo(driver, servo, goal_angle):
    if driver.servo[servo] > goal_angle:
      for i in range(driver.servo[servo].angle, goal_angle, -1):
        driver.servo[servo].angle = i
        driver.servo[servo + 3].angle = i
        time.sleep(0.01)
    else:
      for i in range(driver.servo[servo].angle, goal_angle, 1):
        driver.servo[servo].angle = i
        driver.servo[servo + 3].angle = i
        time.sleep(0.01)
    return






