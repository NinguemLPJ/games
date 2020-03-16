coins = {}

function spawnCoin(x, y)
  local coin = {}
  coin.x = x
  coin.y = y
  coin.image = love.graphics.newImage('Image_Sprites/coin_sheet.png')
  coin.grid = anim8.newGrid(41, 42, coin.image:getWidth(), coin.image:getHeight()) -- 3 x 3
  coin.animation = anim8.newAnimation(coin.grid('1-3',1, '1-3',2, '1-2',3), 0.1)

  table.insert(coins, coin)
  end

function coinUpdate(dt)
  for i,c in ipairs(coins) do
    c.animation:update(dt)
  end
end
