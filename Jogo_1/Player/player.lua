player = {}
player.body = love.physics.newBody(mundo_1, 200, 200, "dynamic")
player.shape = love.physics.newRectangleShape(21, 52)
player.fixture = love.physics.newFixture(player.body, player.shape)
player.speed = 400
player.grounded = false
--player.direction = 1
--player.sprite = sprites.player.stand
player.body:setFixedRotation(true)
player.image = love.graphics.newImage('Image_Sprites/player-image.png')
player.grid = anim8.newGrid(64, 64, player.image:getWidth(), player.image:getHeight()) -- 13 x 21
--player.grid = anim8.newGrid(64, 64, 832, 1344) -- 13 x 21
player.animation = anim8.newAnimation(player.grid('1-7',3), 0.1)
-- TEST DE ANDAR PARA ANIMACAO
player.andandoD = false
player.andandoA = false
player.andandoS = false
player.andandoW = false
player.parado = false
--

function playerUpdate(dt)
  --[[
  for i,p in ipairs(player) do
    player.animation:update(dt)
  end
  ]]
  if love.keyboard.isDown("s") then
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

  if love.keyboard.isDown("w") then
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

  if love.keyboard.isDown("d") then
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

  if love.keyboard.isDown("a") then
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


--[[
  if player.grounded == true then
    player = sprites = sprites.player_stand
  else
    player.sprite = sprites.player_jump
  end
  ]]

--[[
function love.keypressed(key, scancode, isrepeat)
  if key == "space" and player.grounded == true then
    player.body:applyLinearImpulse(0, -1000)
  end
end
  ]]
