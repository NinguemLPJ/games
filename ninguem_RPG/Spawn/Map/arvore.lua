  arvores = {}
  function spawnarvore(x, y, width, height)
    local arvore = {}
    arvore.body = love.physics.newBody(mundo_1, x, y, "static")
    arvore.shape = love.physics.newRectangleShape(width/2, height/2, width, height)
    arvore.fixture = love.physics.newFixture(arvore.body, arvore.shape)
    arvore.width = width
    arvore.height = height

    arvore.image = love.graphics.newImage('Image_Sprites/world/cenario/arvores.png')
    arvore.grid = anim8.newGrid(305, 291, arvore.image:getWidth(), arvore.image:getHeight()) -- 3 x 3
    arvore.animation = anim8.newAnimation(arvore.grid('1-2',1), {2,[1]=999, [2]=0.1})

    table.insert(arvores, arvore)
  end


function arvoreLoad()
  for i, obj in pairs(ForestMap.layers["arvores"].objects) do
  spawnarvore(obj.x, obj.y, obj.width, obj.height)
  end
end

--[[
function arvoreUpdate(dt)
  for i,a in ipairs(arvores) do
    if distanceBetween(a.x, a.y, player.body:getX(), player.body:getY()) < 50 then
      a.collected = true
      gold = gold + 1
    end
  end

  for i=#arvores,1,-1 do
    local a = arvores[i]
    if a.collected == true then
      table.remove(arvores, i)
    end
  end

  for i,a in ipairs(arvores) do
    a.animation:update(dt)
  end
end
  ]]

function arvoreDraw()
  for i,a in ipairs(arvores) do
    a.animation:draw(sprites.arvore, a.x, a.y, nil, nil ,nil , 20.5, 21)
  end
end
