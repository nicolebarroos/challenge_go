#Aplicando multi-stage builds
FROM golang:latest as build-stage
WORKDIR /go/src/github.com/nicolebarroos/go-hello-world
COPY go.* ./
RUN go mod download
COPY hello_world.go .
RUN go build -o hello_world .

#segundo estágio
#usar a imagem scratch é o segredo para redução de tamaho da imagem criada
#ela é uma imagem supermínima, ou seja que contêm apenas um único binário 
#ela é usada como ponto de partida para a construção de imagens
FROM scratch
COPY --from=build-stage /go/src/github.com/nicolebarroos/go-hello-world/hello_world /bin

CMD hello_world