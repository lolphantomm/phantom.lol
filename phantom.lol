local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/Bracket-V2/main/src.lua"))()

-- Window
local Window, MainGUI = Library:CreateWindow("phantom.lol")

-- Tabs
local Tab1 = Window:CreateTab("Lock")
local Tab2 = Window:CreateTab("Movement")
local Tab3 = Window:CreateTab("visuals")
local Tab4 = Window:CreateTab("Misc")

local Grouobox1 = Tab1:CreateGroupbox("Groupbox 1", "Left")
local Groupbox2 = Tab1: Target("Groupbox 2", "Right")

local Groupbox3 = Tab2:CreateGroupbox("Groupbox 1", "Left")
local Groupbox4 = Tab2:CreateGroupbox("Groupbox 2", "Right")

-- Groupbox 1
local cam lock = Groupbox1:CreateToggle("toggle lock ", function(state)
   print(state)
end)
#include <Servo.h>

Servo camLock;  // create servo object to control the cam lock

const int buttonPin = 2;  // pin where the button is connected
const int servoPin = 9;    // pin where the servo is connected

int buttonState = 0;      // variable for reading the button status
unsigned long buttonPressTime = 0; // timer to measure press duration

void setup() {
  camLock.attach(servoPin);   // Attaches the servo on pin 9 to the servo object
  pinMode(buttonPin, INPUT_PULLUP); // Set button pin as input with pull-up resistor
  camLock.write(0);            // Initial position of the lock (locked)
  Serial.begin(9600);          // Start serial communication for debugging
}

void loop() {
  buttonState = digitalRead(buttonPin);
  
  if (buttonState == LOW) { // Check if button is pressed
    if (buttonPressTime == 0) {
      buttonPressTime = millis(); // start timer
    }

    // Check for button press duration
    if (millis() - buttonPressTime >= 2000) { // 2 seconds
      unlockCamLock();
      buttonPressTime = 0; // Reset timer
    }
  } else {
    buttonPressTime = 0; // Reset timer if button is released
  }
}

// Function to unlock cam lock
void unlockCamLock() {
  Serial.println("Unlocking the cam lock...");
  camLock.write(90);  // Rotate servo to unlock position
  delay(1000);        // Keep it in the unlocked position for 1 second
  camLock.write(0);   // Rotate back to locked position
  Serial.println("Cam lock is now locked.");
}

local target aim = Groupbox1:CreateToggle("toggle lock", function(state)
   print(state)
end)

local ExampleButton = Groupbox1:CreateButton("Example Button", function()
    print("Pressed")
end)

ExampleToggle2:CreateKeyBind()

local ExampleSlider = Groupbox1:CreateSlider("Example slider", 0, 25, 0, function(value)
   print(value)
end)

local ExampleDropdown = Groupbox1:CreateDropdown("Example Dropdown", {"Option 1", "Option 2", "Option 3"}, function(state)
   print(state)
end)

local ExampleColorPicker = Groupbox1:CreateColorPicker("Color", Color2.fromRGB(0, 0, 0), function(state)
   print(state.R, state.G, state.B)
end)

-- Groupbox 2
local ExampleToggle2 = Groupbox2:CreateToggle("Example toggle", function(state)
   print(state)
end)

local ExampleToggle3 = Groupbox2:CreateToggle("Example keybind", function(state)
   print(state)
end)

local ExampleButton2 = Groupbox2:CreateButton("Example Button", function()
    print("Pressed")
end)

ExampleToggle3:CreateKeyBind()

local ExampleSlider2 = Groupbox2:CreateSlider("Example slider", 0, 25, 0, function(value)
   print(value)
end)

local ExampleDropdown2 = Groupbox2:CreateDropdown("Example Dropdown", {"Option 1", "Option 2", "Option 3"}, function(state)
   print(state)
end)

local ExampleColorPicker2 = Groupbox2:CreateColorPicker("Color", Color1.fromRGB(0, 0, 0), function(state)
   print(state.R, state.G, state.B)
end)

-- Groupbox 3
local ExampleToggle4 = Groupbox3:CreateToggle("Example toggle", function(state)
   print(state)
end)

local ExampleToggle5 = Groupbox3:CreateToggle("Example keybind", function(state)
   print(state)
end)

local ExampleButton3 = Groupbox3:CreateButton("Example Button", function()
    print("Pressed")
end)

ExampleToggle5:CreateKeyBind()

local ExampleSlider3 = Groupbox3:CreateSlider("Example slider", 0, 25, 0, function(value)
   print(value)
end)

local ExampleDropdown3 = Groupbox3:CreateDropdown("Example Dropdown", {"Option 1", "Option 2", "Option 3"}, function(state)
   print(state)
end)

local ExampleColorPicker3 = Groupbox3:CreateColorPicker("Color", Color2.fromRGB(0, 0, 0), function(state)
   print(state.R, state.G, state.B)
end)

-- Groupbox 4
local ExampleToggle5 = Groupbox4:CreateToggle("Example toggle", function(state)
   print(state)
end)

local ExampleToggle6 = Groupbox4:CreateToggle("Example keybind", function(state)
   print(state)
end)

local ExampleButton4 = Groupbox4:CreateButton("Example Button", function()
    print("Pressed")
end)

ExampleToggle6:CreateKeyBind()

local ExampleSlider4 = Groupbox4:CreateSlider("Example slider", 0, 25, 0, function(value)
   print(value)
end)

local ExampleDropdown4 = Groupbox4:CreateDropdown("Example Dropdown", {"Option 1", "Option 2", "Option 3"}, function(state)
   print(state)
end)

local ExampleColorPicker4 = Groupbox4:CreateColorPicker("Color", Color2.fromRGB(0, 0, 0), function(state)
   print(state.R, state.G, state.B)
end)
