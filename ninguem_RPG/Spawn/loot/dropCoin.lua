dropCoins = {}

function spawndropCoin(x, y)
  local dropCoin = {}
  dropCoin.x = x
  dropCoin.y = y
  dropCoin.collected = false


  dropCoin.image = love.graphics.newImage('Image_Sprites/world/itens/Coin/drop_coin.png')
  dropCoin.grid = anim8.newGrid(500, 191, dropCoin.image:getWidth(), dropCoin.image:getHeight()) -- 3 x 3
  dropCoin.animation = anim8.newAnimation(dropCoin.grid('1-2',1), 0.2)

  table.insert(dropCoins, dropCoin)
  end


function dropCoinLoad()
  for i, obj in pairs(ForestMap.layers["Moedas de Drop"].objects) do
  spawndropCoin(obj.x, obj.y, obj.width, obj.height)
  end
end

function dropCoinUpdate(dt)
  local dinheiro = love.math.random(Config.money['dropCoinMin'], Config.money['dropCoinMax'])
  local randomizar = math.random(1,100)
  for i,c in ipairs(dropCoins) do
    if distanceBetween(c.x, c.y, player.body:getX(), player.body:getY()) < 50 then
      c.collected = true
      bronze = bronze + dinheiro
      --drop = drop + (math.random(Config.money['dropMin'], Config.money['dropMax']))
    end
  end

  for i=#dropCoins,1,-1 do
    local c = dropCoins[i]
    if c.collected == true then
      table.remove(dropCoins, i)
    end
  end


  for i,c in ipairs(dropCoins) do
    c.animation:update(dt)
  end
end

function dropCoinDraw()
  for i,c in ipairs(dropCoins) do
    c.animation:draw(sprites.drop_coin, c.x, c.y, nil, 0.1 ,0.1 , 250, 95.5)
  end
end
