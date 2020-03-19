Inventarios = {}
Inventarios.slots = 1

function openInventarioDraw()
  if love.keyboard.getScancodeFromKey("i") and gameState > 0 and Inventarios.slots > 0 then
    love.graphics.draw(sprites.inventario, player.body:getX()-400, player.body:getY(), nil, 1, 1, nil, nil, kx, ky)
    love.graphics.setFont(myFont10)
    love.graphics.printf("gold:"..gold.." silver:"..silver.." bronze:"..bronze, player.body:getX()-372, player.body:getY()+220, player.body:getX())
  end
end
