#!/usr/bin/python3
#https://3dprinterchat.com/3d-printer-g-codes/
#G1 X0 Y0 F2400 	Fahre auf dem Heizbett zum Punkt X=0, Y=0 mit einer Geschwindigkeit von 2400 mm/min
#G1 Z10 F1200 	Bewege die Z-Achse auf den Wert Z=10mm mit einer Geschwindigkeit von 1200 mm/min
#G1 X30 E10 F1800

#!/usr/bin/python
import math
import serial
import serial.tools.list_ports as port_list
import time


def GCODE(Code):
    print(Code)
    try:
        ser.write( ser.write((Code+"\n").encode()))
        while 1:
            string = ser.readline()
            try:
                string = string.decode()  #msg.decode('utf-8')
                string = string.strip() 
            except:
                print("Decodierungsfehler")
                break
            print(string)
            if string == "wait":
                break

            if string == "ok":
                break
        print("next")    
    except(KeyboardInterrupt, SystemExit):
        print("\nBreak")


def GetResult():
    try:
        while 1:
            string = ser.readline()
            try:
                string = string.decode()  #msg.decode('utf-8')
                string = string.strip() 
            except:
                print("Decodierungsfehler")
                break
            
            if string != '':
                werte = string.split(' ')
                Data1 = werte[0].split(':')
                if Data1[0] == 'busy':
                    continue
                    
                Result = []
                for wert in werte:
                    Result.extend([wert.split(':')])
                break

            if string == "wait":
                break
            
    except(KeyboardInterrupt, SystemExit):
        print("\nBreak")
    return Result


if __name__ == '__main__':
    ports = list(port_list.comports())
    print(ports[0].device)
    #port = ports[0].device

    # Seriellen Port Konfigurieren:
    ser = serial.Serial()
    # Hier den passenden Port angeben
    ser.port = 'COM5' if os.name=='nt' else '/dev/ttyACM0'
    ser.baudrate = 115200
    ser.timeout = 1
    print("Betriebssystem", os.name)
    #min,max = CheckSVG(Dateiname)

    # Port öffnen
    ser.open()
    print("Port geöffnet")
    time.sleep(8)
    #GCODE("")
    GCODE("M17 X")

    #GCODE("G28")
    #print(GetResult())
    #GCODE("G1 Z10 F1200") # Z- Nach Oben
    time.sleep(2)
    Speed = 20000
    for i in range(0,10):
       GCODE("G1 X170 F%d" % Speed)
       GCODE("G1 X70 F%d" % (Speed+40))

    print("\nWird Beendet:")
    GCODE("M104 S0") # Heizung aus
    GCODE("M140 S0") # Bettheizung aus
    GCODE("M84") # Disable Motors
    ser.close()
    print("Com Port geschlossen!")
    print("\nENDE")
