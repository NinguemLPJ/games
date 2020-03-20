player = {}
player.body = love.physics.newBody(mundo_1, 1265, 528, "dynamic")
player.shape = love.physics.newRectangleShape(21, 52)
player.fixture = love.physics.newFixture(player.body, player.shape)
player.speed = 200
player.grounded = false
--player.direction = 1
--player.sprite = sprites.player.stand
player.body:setFixedRotation(true)
player.image = love.graphics.newImage('Image_Sprites/player/Player_1/player-image.png')
--[[
player.grid = anim8.newGrid(64, 64, player.image:getWidth(), player.image:getHeight()) -- 13 x 21
--player.grid = anim8.newGrid(64, 64, 832, 1344) -- 13 x 21
player.animation = anim8.newAnimation(player.grid('1-7',3), 0.1)
-- TEST DE ANDAR PARA ANIMACAO
player.andandoD = false
player.andandoA = false
player.andandoS = false
player.andandoW = false
player.parado = false
]]

-- code by pgimeno
--line 24 to 105
--(Thanks to pgimeno)
player.animState = ""

local gs = anim8.newGrid(64, 64, player.image:getWidth(), player.image:getHeight()) -- 13 x 21

local playerAnimations = {}
playerAnimations["stopped"] = anim8.newAnimation(gs('1-6',21), {2,[1]=60, ['2-5']= 0.1, [6]= 999}) -- sleep after 60 seconds
playerAnimations["walk left"] = anim8.newAnimation(gs('1-9',10), 0.1)
playerAnimations["walk right"] = anim8.newAnimation(gs('1-9',12), 0.1)
playerAnimations["walk up"] = anim8.newAnimation(gs('1-9',9), 0.1)
playerAnimations["walk down"] = anim8.newAnimation(gs('1-9',11), 0.1)
-- If you don't have animations for the diagonals, you can use this:
playerAnimations["walk up left"] = playerAnimations["walk left"]
playerAnimations["walk up right"] = playerAnimations["walk right"]
playerAnimations["walk down left"] = playerAnimations["walk left"]
playerAnimations["walk down right"] = playerAnimations["walk right"]

player.animation = playerAnimations["stopped"]
--

  function playerUpdate(dt)
    if gameState == 0 then
      return
    end
    local andandoW = love.keyboard.isScancodeDown("w")
    local andandoA = love.keyboard.isScancodeDown("a")
    local andandoS = love.keyboard.isScancodeDown("s")
    local andandoD = love.keyboard.isScancodeDown("d")

    local newX = player.body:getX()
    local newY = player.body:getY()

    local oldAnimState = player.animState

    -- Update vertical movement and animation state
    player.animState = "stopped"  -- we start here, we refine it below
    if andandoW ~= andandoS then -- one is true, the other is false - means we're moving up or down
      if andandoW then -- walking up
        newY = newY - player.speed * dt
        player.animState = "walk up"
      else -- walking down
        newY = newY + player.speed * dt
        player.animState = "walk down"
      end
    end

    if andandoA ~= andandoD then -- one is true, the other is false - means we're moving left or right
      if andandoA then -- walking left
        newX = newX - player.speed * dt
        -- We have already updated animState with the vertical movement. Use it to handle diagonals.
        if player.animState == "walk up" then
          player.animState = "walk up left"
        elseif player.animState == "walk down" then
          player.animState = "walk down left"
        else -- vertically stopped
          player.animState = "walk left"
        end
      else -- walking right
        newX = newX + player.speed * dt
        if player.animState == "walk up" then
          player.animState = "walk up right"
        elseif player.animState == "walk down" then
          player.animState = "walk down right"
        else -- vertically stopped
          player.animState = "walk right"
        end
      end
    end

    if player.animState ~= oldAnimState then
      -- The animation needs to be updated because the animation state has changed.
      player.animation = playerAnimations[player.animState]
      player.animation:gotoFrame(1)  -- maybe?
    end

    -- This is not the best way because it won't handle collisions properly,
    -- but it works the same as in your current code.
    player.body:setX(newX)
    player.body:setY(newY)
  end

  function playerDraw()
     player.animation:draw(player.image, player.body:getX(), player.body:getY(), nil, nil, nil, sprites.player:getWidth()/2, sprites.player:getHeight()/2)
  end

  --[[
function playerUpdate(dt)
  for i,p in ipairs(player) do
    player.animation:update(dt)
  end
  ]]
  --[[
  if gameState ~= 0 then
    if love.keyboard.isScancodeDown("s") then
      player.body:setY(player.body:getY() + player.speed * dt)
      if player.andandoS ~= true then -- and not player.andandoA == true and not player.andandoD == true then
        player.animation = anim8.newAnimation(player.grid('1-9',11), 0.1)
        player.andandoD = false
        player.andandoA = false
        player.andandoS = true
        player.andandoW = false
        player.parado = false
      end
    end

    if love.keyboard.isScancodeDown("w") then
      player.body:setY(player.body:getY() - player.speed * dt)
      if player.andandoW ~= true then -- and not player.andandoA == true and not player.andandoD == true then
        player.animation = anim8.newAnimation(player.grid('1-9',9), 0.1)
        player.andandoD = false
        player.andandoA = false
        player.andandoS = false
        player.andandoW = true
        player.parado = false
      end
    end

    if love.keyboard.isScancodeDown("d") then
      player.body:setX(player.body:getX() + player.speed * dt)
      if player.andandoD ~= true then
        player.animation = anim8.newAnimation(player.grid('1-9',12), 0.1)
        player.andandoD = true
        player.andandoA = false
        player.andandoS = false
        player.andandoW = false
        player.parado = false
      end
    end

    if love.keyboard.isScancodeDown("a") then
      player.body:setX(player.body:getX() - player.speed * dt)
      if player.andandoA ~= true then
        player.animation = anim8.newAnimation(player.grid('1-9',10), 0.1)
        player.andandoD = false
        player.andandoA = true
        player.andandoS = false
        player.andandoW = false
        player.parado = false
      end
    end
  end
end
]]

--[[
  if player.grounded == true then
    player = sprites = sprites.player_stand
  else
    player.sprite = sprites.player_jump
  end
  ]]
