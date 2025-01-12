function love.conf(t)
  -- replace this with a string when doing savefiles
  t.identity = nil

  t.accelerometerjoystick = false
  t.window.title = "Space Blackjack"

  t.window.fullscreen = true
  t.window.height = 0
  t.window.width = 0

  t.modules.joystick = false -- Enable the joystick module (boolean)
end
