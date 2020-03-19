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
  end
end
