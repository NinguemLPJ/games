function love.load()
require('requires')
-- Spawn
  muroLoad()
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
    bronzeCoinDraw()
    silverCoinDraw()
    goldCoinDraw()
    bauDraw()

    -- Ninguem_Extras
    tutorialDrawCamAttach()
    printUnderThePlayer("test")
    --printUnderThePlayerTest("gold", gold)

  -- Não acompanha a camera
  cam:detach()
  -- Ninguem_Extras
    tutorialDrawCamDetach()

end
