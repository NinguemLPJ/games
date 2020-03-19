Language = {}
Language.translate = {
  ['br'] = {
        ['press'] = 'Pressione [ENTER] para iniciar o Jogo',
        ['tuto1'] = 'Tutorial',
        ['tuto2'] = 'Seguir tutorial',
        ['tuto3'] = 'Pular Tutorial',
        ['tuto4'] = 'Exemplo numero 4',
        ['tuto5'] = 'Exemplo numero 5',
        ['tuto6'] = 'Exemplo numero 6',
    },
    ['en'] = {
        ['press'] = 'Press [ENTER] to begin',
        ['tuto1'] = 'Tutorial',
        ['tuto2'] = 'follow TutotialS',
        ['tuto3'] = 'Skip Tutorial',
        ['tuto4'] = 'exemple number 4',
        ['tuto5'] = 'exemple number 5',
        ['tuto6'] = 'exemple number 6',
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
