#language:pt

Funcionalidade: Verificar o personsagem
 Eu como fã do desenho Rick and Morthy
 Quero pesquisar as informações de um personagem
 Para saber mais sobre aquele personagem
 
  @busca_personagem
  Cenario: Pesquisar o personagem por id
    Dado que digito o "<id>"
    Quando pesquiso o personagem
    Entao tenho acesso as informações do personagem com sucesso

    Exemplos:
    |id |
    |8  | 