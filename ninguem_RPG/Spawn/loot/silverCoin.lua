silverCoins = {}
require('config')
local dinheiro = math.random(Config.money['silverMin'], Config.money['silverMax'])

function spawnsilverCoin(x, y)
  local silverCoin = {}
  silverCoin.x = x
  silverCoin.y = y
  silverCoin.collected = false


  silverCoin.image = love.graphics.newImage('Image_Sprites/world/itens/Coin/silver_coin.png')
  silverCoin.grid = anim8.newGrid(41, 42, silverCoin.image:getWidth(), silverCoin.image:getHeight()) -- 3 x 3
  silverCoin.animation = anim8.newAnimation(silverCoin.grid('1-3',1, '1-3',2, '1-2',3), 0.1)

  table.insert(silverCoins, silverCoin)
  end


function silverCoinLoad()
  for i, obj in pairs(ForestMap.layers["Moedas de Prata"].objects) do
  spawnsilverCoin(obj.x, obj.y, obj.width, obj.height)
  end
end

function silverCoinUpdate(dt)
  for i,c in ipairs(silverCoins) do
    if distanceBetween(c.x, c.y, player.body:getX(), player.body:getY()) < 50 then
      c.collected = true
      silver = silver + dinheiro
    end
  end

  for i=#silverCoins,1,-1 do
    local c = silverCoins[i]
    if c.collected == true then
      table.remove(silverCoins, i)
    end
  end


  for i,c in ipairs(silverCoins) do
    c.animation:update(dt)
  end
end

function silverCoinDraw()
  for i,c in ipairs(silverCoins) do
    c.animation:draw(sprites.silver_coin, c.x, c.y, nil, nil ,nil , 20.5, 21)
  end
end
