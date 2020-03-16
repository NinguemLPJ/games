  mundo_1 = love.physics.newWorld(0, 0, false)
  mundo_1:setCallbacks(beginContact, endContact, preSolve, postSolve)
