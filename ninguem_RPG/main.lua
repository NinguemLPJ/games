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
    debug() -- ngm_functions
    --printUnderThePlayerTest("gold", gold) -- testar se algo esta mudando

  -- Não acompanha a camera
  cam:detach()
  -- Ninguem_Extras
    tutorialDrawCamDetach()

end
