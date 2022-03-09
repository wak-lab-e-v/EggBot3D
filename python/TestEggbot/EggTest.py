from ebb_serial import openPort,findPort,testPort
import ebb_motion
#import ebb_serial

port = openPort()
print(port)


ebb_motion.doXYMove(port, 3000, 300, 1000)
