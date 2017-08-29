#language: pt

Funcionalidade: Swipe e Tap
Como criador de experimentos
Quero realizar iteração com a classe Action

@tap
Cenário: Action - Tap

Dado que o usuário está na página de idiomas
Quando ele tocar na tela
Então o sistema deve apresentar a página de categoria

@swipe_one
Cenário: Action - Swipe um deslize

Dado que o usuário está na página de produtos
Quando ele deslizar com dedo da direita para esquerda 1 vez
Então o sistema deve realizar apresentar os itens da página
"""
NOVIDADES
"""
@swipe_two
Cenário: Action - Swipe dois deslizes

Dado que o usuário está na página de produtos
Quando ele deslizar com dedo da direita para esquerda 2 vezes
Então o sistema deve realizar apresentar o itens da página
"""
CALÇADOS
"""
