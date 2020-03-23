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
    printUnderThePlayer("gold")
    mostrarFPS()

    -- Debug
    debugDraw()
    --printUnderThePlayerTest("valor de test", gold) -- testar se algo esta mudando
    statsDraw(Language.translate[Config.lang]['vida'], stats.vida, 0, 0)
    statsDraw(Language.translate[Config.lang]['mana'], stats.mana, 0, 20)

  -- Não acompanha a camera
  cam:detach()
  -- Ninguem_Extras
    tutorialDrawCamDetach()
end
