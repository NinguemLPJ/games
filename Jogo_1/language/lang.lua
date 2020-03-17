Language = {}
Language.translate = {
  ['br'] = {
        ['press'] = 'Precione [ENTER] para iniciar o Jogo',
        ['exemplo2'] = 'Exemplo numero 2',
    },
    ['en'] = {
        ['press'] = 'Press [ENTER] to begin',
        ['exemplo2'] = 'exemple number 2',
    }
}

--[[
function idioma(language)
  if language == br then
    message1 = "Brasil"
  elseif language == en then
    message1 = "English"
  end
end
]]
