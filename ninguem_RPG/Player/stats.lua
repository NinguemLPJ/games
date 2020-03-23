stats = {}

function statsLoad()
stats.vida = 0
stats.mana = 0
--stats.armadura = 0
end

function statsDraw(x, y, LocalX, LocalY)
  local variavel = x
  local resolucaoLargura = love.graphics.getWidth()/2
  local resolucaoAltura = love.graphics.getHeight()/2
  love.graphics.setFont(myFont20)
  love.graphics.printf(variavel..":  "..y, player.body:getX()-resolucaoLargura+LocalX, player.body:getY()-resolucaoAltura+LocalY, player.body:getX())
end
