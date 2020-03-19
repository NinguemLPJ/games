baus = {}

function spawnbau(x, y)
  local bau = {}
  bau.x = x
  bau.y = y
  bau.collected = false

  bau.image = love.graphics.newImage('Image_Sprites/world/itens/Bau/32x32/preview.png')
  bau.grid = anim8.newGrid(32, 32, bau.image:getWidth(), bau.image:getHeight()) -- 2 x 2
  bau.animation = anim8.newAnimation(bau.grid('1-3',1), {2,[1]=999, ['2-3']=0.1})

  table.insert(baus, bau)
  end


function bauLoad()
  for i, obj in pairs(ForestMap.layers["baus"].objects) do
  spawnbau(obj.x, obj.y, obj.width, obj.height)
  end
end

function bauUpdate(dt)
  for i,b in ipairs(baus) do
    if distanceBetween(b.x, b.y, player.body:getX(), player.body:getY()) < 50 then
      b.collected = true
    end
  end

  for i=#baus,1,-1 do
    local b = baus[i]
    if b.collected == true then
      table.remove(baus, i)
    end
  end


  for i,b in ipairs(baus) do
    b.animation:update(dt)
  end
end

function bauDraw()
  for i,b in ipairs(baus) do
    b.animation:draw(sprites.bau_fechado, b.x, b.y, nil, nil ,nil , 20.5, 21)
  end
end
