--[[
function beginContact(a, b, coll)
  player.grounded = true
end

function endContact(a, b , coll)
  player.grounded = false
end
    
player.body:applyLinearImpulse(0, -1000)
]]

function love.keypressed(key, scancode, isrepeat)
  if gameState == 0 and key == "return" then
  	gameState = 1
  end
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end
