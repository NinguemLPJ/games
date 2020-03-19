goldCoins = {}
require('config')
local dinheiro = math.random(Config.money['goldMin'], Config.money['goldMax'])

function spawngoldCoin(x, y)
  local goldCoin = {}
  goldCoin.x = x
  goldCoin.y = y
  goldCoin.collected = false


  goldCoin.image = love.graphics.newImage('Image_Sprites/world/itens/Coin/gold_coin.png')
  goldCoin.grid = anim8.newGrid(41, 42, goldCoin.image:getWidth(), goldCoin.image:getHeight()) -- 3 x 3
  goldCoin.animation = anim8.newAnimation(goldCoin.grid('1-3',1, '1-3',2, '1-2',3), 0.1)

  table.insert(goldCoins, goldCoin)
  end


function goldCoinLoad()
  for i, obj in pairs(ForestMap.layers["Moedas de Ouro"].objects) do
  spawngoldCoin(obj.x, obj.y, obj.width, obj.height)
  end
end

function goldCoinUpdate(dt)
  for i,c in ipairs(goldCoins) do
    if distanceBetween(c.x, c.y, player.body:getX(), player.body:getY()) < 50 then
      c.collected = true
      gold = gold + dinheiro
    end
  end

  for i=#goldCoins,1,-1 do
    local c = goldCoins[i]
    if c.collected == true then
      table.remove(goldCoins, i)
    end
  end


  for i,c in ipairs(goldCoins) do
    c.animation:update(dt)
  end
end

function goldCoinDraw()
  for i,c in ipairs(goldCoins) do
    c.animation:draw(sprites.gold_coin, c.x, c.y, nil, nil ,nil , 20.5, 21)
  end
end
