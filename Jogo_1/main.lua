function love.load()
  require('Libraries/libraries')
  require('World/myWorld')
  require('Load_Sprites/Load-sprites')
  require('Player/player')
  --require('Spawn/Enemys/zombie')
  require('Spawn/loot/coin')
  require('Player/player')
  require('World/colision')
  require('ninguem_functions/ngm_spawn')
  require('World/Maps/load-maps')

  for i, obj in pairs(ForestMap.layers["muros"].objects) do
    spawnMuro(obj.x, obj.y, obj.width, obj.height)
  end
end

function love.update(dt)
  mundo_1:update(dt)
  playerUpdate(dt)
  player.animation:update(dt)
  coinUpdate(dt)
  ForestMap:update(dt)
end

function love.draw()
  ForestMap:drawLayer(ForestMap.layers["Level 1"])
  --love.graphics.draw(sprites.player, player.body:getX(), player.body:getY(), nil, nil, nil, sprites.player:getWidth()/2, sprites.player:getHeight()/2)
  player.animation:draw(player.image, player.body:getX(), player.body:getY(), nil, nil, nil, sprites.player:getWidth()/2, sprites.player:getHeight()/2)

  for i,c in ipairs(coins) do
    c.animation:draw(sprites.coin_sheet, c.x, c.y)
  end
end

require('ninguem_functions/ngm_functions')