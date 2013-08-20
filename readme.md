# WebVisão

# O WebVisão na sua maquina

Faça o fork do repositório e depois aceda-o usando o terminal do nodejs:
``` shell
	cd lorem\ipsum\dolor\blog
```

O WebVisão é gerado pelo DocPad, por isso é necessário ter o [Nodejs](https://docpad.org) instalado para usa-lo localmente. Então, apôs instalar o node execute o comando abaixo pelo terminal para instalar o docpad:
``` shell
	npm install -g docpad@6.49.1
```

Agora pra finalizar serão necessarios 3 plugins: [eco](https://github.com/docpad/docpad-plugin-eco) para renderizar os arquivos .eco, [marked](https://github.com/docpad/docpad-plugin-marked) para converter os posts e arquivos markdown (.md) e o [highlight.js](https://github.com/docpad/docpad-plugin-highlightjs) para o syntax highlight:
``` shell
	npm install docpad-plugin-eco
	npm install docpad-plugin-marked
	npm install docpad-plugin-highlightjs
```

Depois de instalar todas as dependencias apenas execute o comando na directoria do projecto:
``` shell
	docpad run
```
Com isso ele irá gerar os arquivos necessários para ter o blog operacional na directoria /out, e o blog estará dispónivel no seguinte endereço:
``` shell
	localhost:9778
```
