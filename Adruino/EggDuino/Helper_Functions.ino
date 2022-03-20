void initHardware(){
  // enable eeprom wait in avr/eeprom.h functions
  SPMCSR &= ~SELFPRGEN;

  loadPenPosFromEE();

  pinMode(enableRotMotor, OUTPUT); 
  pinMode(enablePenMotor, OUTPUT);  
  pinMode(prgButton, INPUT_PULLUP);
  pinMode(penToggleButton, INPUT_PULLUP);
  pinMode(motorsButton, INPUT_PULLUP);

  rotMotor.setMaxSpeed(2000.0);
  rotMotor.setAcceleration(10000.0);
  penMotor.setMaxSpeed(2000.0);
  penMotor.setAcceleration(10000.0);
  motorsOff();
  penServo.attach(servoPin);
  penServo.write(penState);
  }

inline void loadPenPosFromEE() {
  //penUpPos = eeprom_read_word(penUpPosEEAddress);
  //penDownPos = eeprom_read_word(penDownPosEEAddress);
  penState = penUpPos;
}

inline void storePenUpPosInEE() {
  //eeprom_update_word(penUpPosEEAddress, penUpPos);
}

inline void storePenDownPosInEE() {
  //eeprom_update_word(penDownPosEEAddress, penDownPos);
}

inline void sendAck(){
	Serial.print("OK\r\n");
}

inline void sendError(){
	Serial.print("unknown CMD\r\n");
}
