-- Sleep mdoe disable/enable
caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setTitle("AWAKE")
    else
        caffeine:setTitle("SLEEPY")
    end
end

function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

local hyper = {"ctrl","alt"}

hs.window.animationDuration=0

-- Moves the window to the left half of the screen
hs.hotkey.bind(hyper, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Moves the window to the right half of the screen
hs.hotkey.bind(hyper, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Moves the window to the top half of the screen
hs.hotkey.bind(hyper, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x 
  f.y = max.y / 2
  f.w = max.w 
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Moves the window to the bottom half of the screen
hs.hotkey.bind(hyper, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x 
  f.y = max.y + (max.h /2)
  f.w = max.w 
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Moves the window to the bottom half of the screen
hs.hotkey.bind(hyper, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x 
  f.y = max.y + (max.h /2)
  f.w = max.w 
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Moves the window to the top left quarter of the screen
hs.hotkey.bind(hyper, "u", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y 
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Moves the window to the top right quarter of the screen
hs.hotkey.bind(hyper, "i", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w /2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Moves the window the bottom left quarter of the screen
hs.hotkey.bind(hyper, "j", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x 
  f.y = max.y + (max.h /2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Moves the window to the bottom right quarter of the screen
hs.hotkey.bind(hyper, "k", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w /2)
  f.y = max.y + (max.h /2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Maximise the screen
hs.hotkey.bind(hyper, "return", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = scree:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
 end)

-- Move the window to the left third of the screen
hs.hotkey.bind(hyper, "d", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max =  screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = max.w /3
	f.h = max.h
	win:setFrame(f)
end)

-- Move the window to the centre third of the screen
hs.hotkey.bind(hyper, "f", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max =  screen:frame()

  f.x = max.x + (max.w / 3)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)

-- Move the window to the right third of the screen
hs.hotkey.bind(hyper, "g", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max =  screen:frame()

  f.x = max.x + 2 * (max.w / 3)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)

-- Move the window to two thirds to the left of the screen
hs.hotkey.bind(hyper, "e", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max =  screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = 2 * (max.w / 3)
  f.h = max.h
  win:setFrame(f)
end)

-- Move the window to two thirds to the right of the screen
hs.hotkey.bind(hyper, "t", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max =  screen:frame()

  f.x = max.x + (max.w / 3)
  f.y = max.y
  f.w = 2 * (max.w / 3)
  f.h = max.h
  win:setFrame(f)
end)

