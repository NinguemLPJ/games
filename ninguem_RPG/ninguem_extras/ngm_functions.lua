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
    stats.vida = 100
    stats.mana = 50
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
  local resolucaoLargura = love.graphics.getWidth()/2
  local resolucaoAltura = love.graphics.getHeight()/2
  getY = tostring(math.ceil(player.body:getY()))
  getX = tostring(math.ceil(player.body:getX()))
  love.graphics.setFont(myFont20)
  love.graphics.printf("X:"..getX.."   ".."Y: "..getY, player.body:getX()-80, player.body:getY()+resolucaoAltura-30, player.body:getX())
end

function printUnderThePlayerTest(x, y, LocalX, LocalY)
  local variavel = x
  local resolucaoLargura = love.graphics.getWidth()/2
  local resolucaoAltura = love.graphics.getHeight()/2
  love.graphics.setFont(myFont20)
  love.graphics.printf(variavel..":  "..y, player.body:getX()-80, player.body:getY()+30, player.body:getX())
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

function mostrarFPS()
  local resolucaoLargura = love.graphics.getWidth()/2
  local resolucaoAltura = love.graphics.getHeight()/2
  love.graphics.printf("FPS: "..love.timer.getFPS(), player.body:getX()+resolucaoLargura-100, player.body:getY()-resolucaoAltura+10, player.body:getX())
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


-- debug

function debugLoad()
debug = 0
end
function debugUpdate(max, min)
  if love.keyboard.isScancodeDown("r") then
    debug = love.math.random(max, min) -- TEST YOUR RANDOM HERE AND START
  --for i, obj in pairs(ForestMap.layers["Moedas de Ouro"].objects) do
    end
end

function debugDraw()
  local print = debug
  love.graphics.setFont(myFont20)
  love.graphics.printf(print, player.body:getX(), player.body:getY()-50, player.body:getX())
end
