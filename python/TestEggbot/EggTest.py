from ebb_serial import openPort,findPort,testPort
import ebb_motion
import time
#import ebb_serial

port = openPort()
print(port)


ebb_motion.doXYMove(port, 300, 300, 1000)
ebb_motion.doXYMove(port, -300, -300, 2000)
ebb_motion.sendPenDown(port, 1000)
time.sleep(2)
ebb_motion.sendPenUp(port, 1000)
