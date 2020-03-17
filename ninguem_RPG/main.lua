function love.load()
  require('Libraries/libraries')
  require('ninguem_extras/game_state')
  require('ninguem_extras/font')
  require('language/lang')
  require('World/myWorld')
  require('Load_Sprites/Load-sprites')
  require('Player/player')
  --require('Spawn/Enemys/zombie')
  require('Spawn/loot/coin')
  require('Player/player')
  require('Spawn/Map/muros')
  require('World/Maps/load-maps')
  require('config')

  for i, obj in pairs(ForestMap.layers["muros"].objects) do
    spawnMuro(obj.x, obj.y, obj.width, obj.height)
  end

  for i, obj in pairs(ForestMap.layers["coins"].objects) do
    spawnCoin(obj.x, obj.y, obj.width, obj.height)
  end
end

function love.update(dt)
  mundo_1:update(dt)
  playerUpdate(dt)
  player.animation:update(dt)
  coinUpdate(dt)
  ForestMap:update(dt)
  cam:lookAt(player.body:getX(), player.body:getY())
end

function love.draw()
  cam:attach()

  ForestMap:drawLayer(ForestMap.layers["Level 1"])
  --love.graphics.draw(sprites.player, player.body:getX(), player.body:getY(), nil, nil, nil, sprites.player:getWidth()/2, sprites.player:getHeight()/2)
  player.animation:draw(player.image, player.body:getX(), player.body:getY(), nil, nil, nil, sprites.player:getWidth()/2, sprites.player:getHeight()/2)

  for i,c in ipairs(coins) do
    c.animation:draw(sprites.coin_sheet, c.x, c.y, nil, nil ,nil , 20.5, 21)
  end

  cam:detach()

  if gameState == 0 then
    love.graphics.setFont(myFont30)
    love.graphics.printf(Language.translate[Config.lang]['press'], 0 , 50, love.graphics.getWidth(), "center")
  end

end

require('ninguem_extras/ngm_functions')
