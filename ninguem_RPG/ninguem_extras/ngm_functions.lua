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

function printUnderThePlayer()
  getY = tostring(math.ceil(player.body:getY()))
  getX = tostring(math.ceil(player.body:getX()))
  love.graphics.setFont(myFont20)
  love.graphics.printf("X:"..getX.."   ".."Y: "..getY, player.body:getX()-70, player.body:getY()+250, player.body:getX())
end

function printUnderThePlayerTest(x, y)
  local variavel = x
  love.graphics.setFont(myFont20)
  love.graphics.printf(variavel..":  "..y, player.body:getX()+200, player.body:getY()+150, player.body:getX())
end

function convercaoDeMoedasUpdate()
  if bronze >= 100 then
    bronze = bronze - 100
    silver = silver + 1
  end
  if silver >= 100 then
    silver = silver - 100
    gold = gold + 1
  end
end

function tamanhoDaTela(x, y)
love.window.setMode(x, y)
end

--[[
local posX = tostring(player.body:getX)
local posY = tostring(player.body:getY)
local cds = posX
if key == "space" then
    love.graphics.printf(cds, 0 , 500, 1200, "center")
end
]]
