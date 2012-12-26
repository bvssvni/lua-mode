local mode = require "mode"

-- Create an object to keep track of the modes.
local mod = mode.newModes({"file", "edit", "tools", "help"})

-- This method is called before changing mode.
function mode.change(mod, index)
  -- Disable option 3.
  if index == 3 then
    return false
  else
    return true
  end
end

function love.load()
  -- Goto edit mode
  mode.gotoMode(mod, 2)
end

function love.draw()
  mode.draw(mod)
end

function love.keypressed(key)
  mode.handleKeyPress(mod, key)
end


