Inventarios = {}

function inventarioLoad()
Inventarios.Open = false
Inventarios.slots = 16
end

function openInventarioDraw()
  if Inventarios.Open == true then
    love.graphics.draw(sprites.inventario, player.body:getX()-400, player.body:getY(), nil, 1, 1, nil, nil, kx, ky)
    love.graphics.setFont(myFont10)
    love.graphics.printf("gold:"..gold.." silver:"..silver.." bronze:"..bronze, player.body:getX()-372, player.body:getY()+220, player.body:getX())
  end
end

--[[
Inventarios = {}

function inventarioLoad()
Inventarios.Open = false
Inventarios.slots = 16
end

elseif Inventarios.Open == false and key == "i" and gameState > 0  then
  Inventarios.Open = true
elseif Inventarios.Open == true and key == "i" and gameState > 0 then
  Inventarios.Open = false

function openInventarioDraw()
  if Inventarios.Open == true then
    love.graphics.draw(sprites.inventario, player.body:getX()-400, player.body:getY(), nil, 1, 1, nil, nil, kx, ky)
    love.graphics.setFont(myFont10)
    love.graphics.printf("gold:"..gold.." silver:"..silver.." bronze:"..bronze, player.body:getX()-372, player.body:getY()+220, player.body:getX())
  end
end
]]
