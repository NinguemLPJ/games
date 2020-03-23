function love.load()
require('requires')
-- main_require/load_main
  loveLoad()

-- debug
  debugLoad()

end

function love.update(dt)
  -- main_require/load_update
  loveUpdate(dt)

  -- Debug
  debugUpdate(0.0001, 0.1) -- Ninguem_Extras/ngm_functions (PRESET R TO RANDOMIZE IN GAME)
end

function love.draw()
  loveDraw()

end
