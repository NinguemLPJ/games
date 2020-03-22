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
  if gameState == 0 and scancode == "return" then
  	gameState = 1
    elseif Inventarios.Open == false and scancode == "i" and gameState > 0  then
      Inventarios.Open = true
    elseif Inventarios.Open == true and scancode == "i" and gameState > 0 then
      Inventarios.Open = false
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
-- Printa em baixo do objeto

function debug()
  --for i, obj in pairs(ForestMap.layers["Moedas de Ouro"].objects) do
    local test = love.math.random(0.10, 0.1) -- TEST YOUR RANDOM HERE AND START
    local print = test
    love.graphics.setFont(myFont20)
    love.graphics.printf(print, player.body:getX(), player.body:getY()-50, player.body:getX())
end


function printUnderThePlayerTest(x, y, LocalX, LocalY)
  local variavel = x
  local LocalX = 0
  local LocalY = 0
  love.graphics.setFont(myFont20)
  love.graphics.printf(variavel..":  "..y, player.body:getX()+LocalX, player.body:getY()+LocalY, player.body:getX())
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
