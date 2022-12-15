#### Descrição do projeto:
O projeto consiste em criar uma imagem go que executará "Hello world". O desafio é fazer com que essa imagem
tenha o tamanho máximo de 2MB. Para isso, na construção da imagem foi utilizado multi-stage builds e o uso da imagem scratch,
ela é uma imagem supermínima, ou seja que contêm apenas um único binário, muito usada como ponto de partida para a construção de imagens. Consegui o tamanho de 1.82MB =)
