---
layout: post
title: Gerar arquivos com PHP
image: img/5.jpg
thumb: img/5.jpg
categoria: PHP
tags: gerar &nbsp;arquivos
autor: Flowck
resumo: Uma das grandes vantagens das linguagens server side é o poder que elas possuem em  manipular arquivos no servidor. É possível gerar, determinar o conteúdo do arquivo, deletar, e [...]
date: 2012-12-18
id: arquivos_php
---

Uma das grandes vantagens das linguagens server side é o poder que elas possuem em  manipular arquivos no servidor. É possível gerar, determinar o conteúdo do arquivo, deletar, e ainda comprimir o mesmo arquivo.

Com a evolução da web, os desenvolvedores deixaram de construir apenas paginas e passaram também a desenvolver web apps. Um exemple básico de aplicações web que manipulam arquivos são os editores de códigos contidos nos cpanel's.

### E ENTÃO?

Eu vou criar um simples script em PHP que gera arquivos .html, inserir conteúdo dentro, e ainda deletar os aquivos criados no servidor.

Para criar um novo ficheiro com conteúdo existe um comando php com a seguinte sintaxe: 
``` php
	file_put_contents(filename , data);
``` 
O parâmetro filename recebe o nome do ficheiro com a extensão e o parâmetro data recebe o conteúdo.
``` php
<?php
	$nome = "index.html";
	$conteudo = "
		<html>
			<head>
				<title></title>
			</head>
			<body>
			
			</body>
		</html>
	";
	$arquivo = file_put_contents($nome, $conteudo);
?>
```
O script acima cria uma ficheiro com a extensão .html e também já insere conteúdo no mesmo, que no caso é a estrutura básica do markup.

### E DEPOIS?

Imagine que você criou um sistema que possui uma área que gera ficheiros, algo parecido com um editor de texto online, seria logico permitir ao usuário deletar o ficheiro por ele criado. O seu sistema não utiliza uma bd pra guardar o texto ele simplesmente gera um ficheiro real no servidor.

Nesse caso não é possível executar o comando DELETE do SQL porque os ficheiros estão no servidor.

### E ENTÃO, COMO DELETAR ESSE ARQUIVO?

![delete](../assets/img/4.jpg)

O super comando unlink() é a solução. Entendam que quando eu digo super comando é porque ele tem o poder de deletar uma diretoria inteira, mesmo que conter 1000 ficheiros, por isso cuidado.

A sintaxe do comando é simples: unlink(filename); Lembrando que o parâmetro filename corresponde a uma string com o nome do ficheiro ou diretoria que será deletada.

``` php
<?php
	unlink("index.html");
?>
```

E pronto! o ficheiro criado foi deletado.