function loveDraw()
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
