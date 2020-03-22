bronzeCoins = {}

function spawnbronzeCoin(x, y)
  local bronzeCoin = {}
  bronzeCoin.x = x
  bronzeCoin.y = y
  bronzeCoin.collected = false


  bronzeCoin.image = love.graphics.newImage('Image_Sprites/world/itens/Coin/bronze_coin.png')
  bronzeCoin.grid = anim8.newGrid(41, 42, bronzeCoin.image:getWidth(), bronzeCoin.image:getHeight()) -- 3 x 3
  bronzeCoin.animation = anim8.newAnimation(bronzeCoin.grid('1-3',1, '1-3',2, '1-2',3), 0.1)

  table.insert(bronzeCoins, bronzeCoin)
  end


function bronzeCoinLoad()
  for i, obj in pairs(ForestMap.layers["Moedas de Bronze"].objects) do
  spawnbronzeCoin(obj.x, obj.y, obj.width, obj.height)
  end
end

function bronzeCoinUpdate(dt)
  local dinheiro = math.random(Config.money['bronzeMin'], Config.money['bronzeMax'])
  local randomizar = math.random(1,100)
  for i,c in ipairs(bronzeCoins) do
    if distanceBetween(c.x, c.y, player.body:getX(), player.body:getY()) < 50 then
      c.collected = true
      bronze = bronze + dinheiro
      --bronze = bronze + (math.random(Config.money['bronzeMin'], Config.money['bronzeMax']))
    end
  end

  for i=#bronzeCoins,1,-1 do
    local c = bronzeCoins[i]
    if c.collected == true then
      table.remove(bronzeCoins, i)
    end
  end


  for i,c in ipairs(bronzeCoins) do
    c.animation:update(dt)
  end
end

function bronzeCoinDraw()
  for i,c in ipairs(bronzeCoins) do
    c.animation:draw(sprites.bronze_coin, c.x, c.y, nil, nil ,nil , 20.5, 21)
  end
end
