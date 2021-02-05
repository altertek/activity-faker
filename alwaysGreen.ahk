; Travels to 1 pixel in any directions
global pixelTravel := 1

; Moves mouse each 300000 miliseconds (=5 minutes)
global sleepMilis := 300000 


; Do not edit below this line



; Used to keep track of previous mouse movement. If 1 then mouse goes +1 else goes -1
global cursorWay := 1

MoveMouse() {
  MouseGetPos, xpos, ypos
 
  if (cursorWay == 1) {
    xpos += %pixelTravel%
    ypos += %pixelTravel%
    cursorWay := -1
  }
  else {
    xpos -= %pixelTravel%
    ypos -= %pixelTravel%
    cursorWay := 1
  }
  MouseMove, %xpos%, %ypos%, speed1
}

Loop {
  sleep %sleepMilis%
  MoveMouse()
}