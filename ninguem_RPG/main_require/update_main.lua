function loveUpdate(dt)
  mundo_1:update(dt)

  --Player
  playerUpdate(dt)
  player.animation:update(dt)

  -- Spawn
  dropCoinUpdate(dt)
  bronzeCoinUpdate(dt)
  silverCoinUpdate(dt)
  goldCoinUpdate(dt)
  bauUpdate(dt)

  -- Ninguem_Extras
  convercaoDeMoedasUpdate()

  -- World
  ForestMap:update(dt)

  -- Libraries
  cam:lookAt(player.body:getX(), player.body:getY())
end
