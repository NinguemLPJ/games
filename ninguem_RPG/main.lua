function love.load()
require('requires')
-- Spawn
  muroLoad()
  dropCoinLoad()
  bronzeCoinLoad()
  silverCoinLoad()
  goldCoinLoad()
  bauLoad()
  inventarioLoad()
-- debug
  debugLoad()

end

function love.update(dt)
  -- Wolrd
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
  -- Debug
  debugUpdate(100, 0.0000001) -- Ninguem_Extras/ngm_functions (PRESET R TO RANDOMIZE IN GAME)

  -- Ninguem_Extras
  convercaoDeMoedasUpdate()
  ------------
  -- World
  ForestMap:update(dt)

  -- Libraries
  cam:lookAt(player.body:getX(), player.body:getY())
end

function love.draw()
  -- Anda junto com a camera
  cam:attach()
    -- Spawn
    backgroundDraw()

    -- Player
    playerDraw()
    openInventarioDraw()

    -- Spawn
    dropCoinDraw()
    bronzeCoinDraw()
    silverCoinDraw()
    goldCoinDraw()
    bauDraw()

    -- Ninguem_Extras
    tutorialDrawCamAttach()
    printUnderThePlayer("test")

    -- Debug
    debugDraw()
    --printUnderThePlayerTest("gold", gold) -- testar se algo esta mudando

  -- Não acompanha a camera
  cam:detach()
  -- Ninguem_Extras
    tutorialDrawCamDetach()

end
