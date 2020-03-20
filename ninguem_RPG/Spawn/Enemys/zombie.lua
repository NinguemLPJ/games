zombies = {}

function spawnZombie(x, y)
  local zombie = {}
  zombie.x = x
  zombie.y = y
  

  --zombie.grid = anim8.newGrid(tiledX, tiledY, fullsizeX, fullsizeY)
  --zombie.animation = anim8.newAnimation(zombie.grid('1-2',1, '1-2'2), 0.2)

  table.insert(zombies, zombie)
  end

--[[
function zombieUpdate(dt)
  for i,z in ipairs(zombies) do
    z.animation:update(dt)
  end
end
]]
