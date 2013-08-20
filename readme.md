# WebVisão

## O WebVisão na sua maquina

Faça o fork do repositório e depois aceda-o usando o terminal do nodejs:

```
	cd lorem\ipsum\dolor\blog
```

O WebVisão é gerado pelo DocPad, por isso é necessário ter o [Nodejs](https://docpad.org) instalado em sua maquina para usar o webvisão localmente. Então, apôs instalar o node execute o comando abaixo pelo terminal para instalar o docpad:

```
	npm install -g docpad@6.49.1
```

Agora pra finalizar serão necessarios 3 plugins: [eco](https://github.com/docpad/docpad-plugin-eco) para renderizar os arquivos .eco, [marked](https://github.com/docpad/docpad-plugin-marked) para converter os posts e arquivos markdown (.md) e o [highlight.js](https://github.com/docpad/docpad-plugin-highlightjs) para o syntax highlight:

```
	npm install docpad-plugin-eco
```

```
	npm install docpad-plugin-marked
```

```
	npm install docpad-plugin-highlightjs
```

Depois de instalar todas as dependencias apenas execute o comando na directoria do projecto:

```
	docpad run
```

Com isso ele irá gerar os arquivos necessários para ter o blog operacional na directoria /out, e o blog estará dispónivel no seguinte endereço:

```
	localhost:9778
```

## Estrutura

O Repositório estará estruturado do seguinte modo apôs todos os sets acima:


	|--- node_modules

	|--- out

	|--- src

		|--- documents
			|--- assets
			|--- autores
			|--- posts

		|--- files

		|--- layouts

	-- docpad.coffee

	-- gruntfile.js

	-- package.json

	-- README.md

### node_modules
Contem todos os arquivos com que o nodejs irá traablhar como: docpad, eco, marked, highlight

### out
O Site estático gerado será armazenado nesta directoria pelo Docpad

### assets
Arquivos .js, .css, fonts e imagens são armazenados nesta directoria

###autores
Contem as informações dos autores dos posts

###posts
Todos os posts em .md

###layouts
Os layouts especificos para paginas como post, index e sobre

### docpad.coffee
Contem as configurações usadas pelo docpad

### gruntfile.js
Ficheiro de configuração do [grunt.js](gruntjs.com)
