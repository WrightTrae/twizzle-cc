controller = peripheral.find("arController")
if controller == nil then
    error("Can't find AR Controller")
end

controller = peripheral.wrap("left") -- Defines the controller to the left of the computer
controller.setRelativeMode(true, 1600, 900) -- Convenient Aspect ratio for most screens
while true do
  local timer = os.startTimer(1)
  local event, id
  repeat
    event, id = os.pullEvent("timer")
  until id == timer
  controller.clear() -- If you don't do this, the texts will draw over each other
  controller.drawRightboundString(os.date(), -10, 10, 0xffffff)
end
