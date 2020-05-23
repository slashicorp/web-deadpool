# Projeto 2

![Deadpool](https://66.media.tumblr.com/a9d9da75f0e0606dd81ee4331e55f63b/tumblr_o2ji4rLItD1qkq3ido5_1280.png)

`A tarefa consiste em reestruturar um dos 3 projetos acima de forma que seja aplicada todas a técnicas aprendidas até o momento`

`Escolher entre UM (01), entre os três exercícios abaixo para realizar um TUNNING.`

`a)`Super-Drones.

`b)`Deadpool 2

`c)`Terra Sua Linda

## Integrantes do grupo Gh3

| ALUNO                       |   RM     |
|-----------------------------|----------|
| Alexandre Pacheco do Couto  | 85657    |
| Allan Phyllyp Reis          | 85619    |
| Dihogo Cassimiro Teixeira   | 84082    |
| Fernando Borgatto Bouman    | 85833    |
| Ingrid Pinheiro             | 83579    |
| Juan Carlos Benvive Serrano | 85468    |

# Build do projeto no Docker:

Para criar a imagem do projeto certifique-se que esteja na pasta raiz dele e execute a sequência de comandos:

```
$ docker image build . -t web-deadpool:latest

$ docker run -dti --name web-deadpool-teste -p 8081:80 web-deadpool
```
Conferindo se o container está em execução:

```
$ docker ps

CONTAINER ID        IMAGE             COMMAND                  CREATED             STATUS              PORTS                  NAMES
692d807ff1d2        web-deadpool      "/usr/sbin/httpd -D …"   3 minutes ago       Up 3 minutes        0.0.0.0:8081->80/tcp   web-deadpool-teste

```

Após finalizar a subida do container acesse o endereço local da sua máquina indicando a porta exposta no host local:

`Exemplo:` http://127.0.0.1:8081

# Baixando imagem do dockerhub:

```
$ docker pull dihogoteixeira/gh3-web-deadpool:latest

$ docker run -dti --name web-deadpool-teste -p 8081:80 gh3-web-deadpool:latest
```
