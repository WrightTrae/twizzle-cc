controller = peripheral.find("arController")
egDetector = peripheral.find("energyDetector")

if controller == nil then
    error("Can't find AR Controller")
end

if egDetector == nil then
    error("Can't find EG Detector")
end


controller.setRelativeMode(true, 1600, 900) -- Convenient Aspect ratio for most screens
while true do
  local timer = os.startTimer(1)
  local event, id
  repeat
    event, id = os.pullEvent("timer")
  until id == timer
  controller.clear() -- If you don't do this, the texts will draw over each other
  controller.drawString("FE/t: " .. tostring(egDetector.getTransferRate()), 10, 150, 0xffffff)
end
