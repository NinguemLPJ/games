muros = {}
function spawnMuro(x, y, width, height)
  local muro = {}
  muro.body = love.physics.newBody(mundo_1, x, y, "static")
  muro.shape = love.physics.newRectangleShape(width/2, height/2, width, height)
  muro.fixture = love.physics.newFixture(muro.body, muro.shape)
  muro.width = width
  muro.height = height

  table.insert(muros, muro)
end

function muroLoad()
  for i, obj in pairs(ForestMap.layers["muros"].objects) do
    spawnMuro(obj.x, obj.y, obj.width, obj.height)
  end
end
