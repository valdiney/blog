---
layout: post
title: fei-d, a pequena biblioteca .js
image: img/7.jpg
categoria: Javascript
tags: js, library, efeitos
autor: Flowck
date: 2013-07-29
---

Em tempos estive a planejar o meu personal website e a pensar no UI/UX do mesmo, cheguei a um dado ponto onde teria que usar alguns efeitos em elementos da pagina, no caso o fade-in e o fade-out muito famosos por causa do jQuery.

Aplicar estes efeitos por meio do jQuery é extremamente fácil, mas eu não queria usar este framework no meu website. Afinal de contas com as tecnologias que hoje possuímos não há motivos para usarmos o jQuery pra realizar apenas fade-in e out, estaríamos a usar apenas 2% do que ele nos oferece.

Eu queria algo muito simples, então decidi criar uma pequena biblioteca que realizasse o fade-in e out utilizando css3(opacity/transition). Eis o [fei-d.js](https://github.com/Flowck/fei-d) uma lib. que permite aplicar o efeito fade-in e fade-out em elementos html.

### COMO USAR

A sua sintaxe é: feid(elemento, duração).

Elemento: consiste num elemento html na qual nos pretendemos aplicar o efeito.

Duração: é o valor que determina o tempo de duração da animação

Exemplo1:

	<section id="meuElemento"></section>
	var meuEle = document.getElementById('meuElemento');
	feid(meuEle, 2);`