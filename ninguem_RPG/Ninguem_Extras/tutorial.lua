function tutorialDrawCamDetach()
  if gameState == 0 then
    love.graphics.setFont(myFont30)
    love.graphics.printf(Language.translate[Config.lang]['press'], 0 , 50, love.graphics.getWidth(), "center")
  end
end

function tutorialDrawCamAttach()
  if gameState == 1 then
    love.graphics.setFont(myFont40)
    love.graphics.printf(Language.translate[Config.lang]['tuto1'], 0 , 500, 1420*2, "center")
    love.graphics.setFont(myFont20)
    love.graphics.printf(Language.translate[Config.lang]['tuto2'], 0 , 600, 1559*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto3'], 0 , 600, 1275*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto4'], 0 , 500, 2574*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto5'], 0 , 500, 3576*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto6'], 0 , 500, 4584*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto7'], 0 , 500, 5593*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto8'], 0 , 500, 6597*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto9'], 0 , 500, 7605*2, "center")
    love.graphics.printf(Language.translate[Config.lang]['tuto10'], 0 , 500, 8617*2, "center")
  end
end
