---
layout: post
title: fei-d, a pequena biblioteca .js
image: img/7.jpg
thumb: img/7_thumb.jpg
categoria: Javascript
tags: js &nbsp;library
autor: Flowck
resumo: Em tempos estive a planejar o meu personal website e a pensar no UI/UX do mesmo, cheguei a um dado ponto onde teria que usar alguns efeitos em elementos da pagina, no caso o fade-in e o fade-out muito famosos por causa do jQuery.
date: 2013-02-29
id: feid_lib
---

Em tempos estive a planejar o meu personal website e a pensar no UI/UX do mesmo, cheguei a um dado ponto onde teria que usar alguns efeitos em elementos da pagina, no caso o fade-in e o fade-out muito famosos por causa do jQuery.

Aplicar estes efeitos por meio do jQuery é extremamente fácil, mas eu não queria usar este framework no meu website. Afinal de contas com as tecnologias que hoje possuímos não há motivos para usarmos o jQuery pra realizar apenas fade-in e out, estaríamos a usar apenas 2% do que ele nos oferece.

Eu queria algo muito simples, então decidi criar uma pequena biblioteca que realizasse o fade-in e out utilizando css3(opacity/transition). Eis o [fei-d.js](https://github.com/Flowck/fei-d) uma lib. que permite aplicar o efeito fade-in e fade-out em elementos html.

### COMO USAR

A sua sintaxe é bastante simples: 
``` javascript
feid(elemento, duração);
// Métodos
on();
off();
```

* Elemento: consiste num elemento html na qual nos pretendemos aplicar o efeito.

* Duração: é o valor que determina o tempo de duração da animação

* Método on(): equivalente aplica ao elemento o efeito fade-in.

* Método off(): equivalente aplica ao elemento o efeito fade-out.

### DEMO

O markup:
``` html
<section id="meuElemento"></section>
``` 
O Javascript:

``` javascript
	var meuEle = document.getElementById('meuElemento'),
	foo = feid(meuEle, 2);
``` 
Fade In:

``` javascript
	foo.on();
```
Fade Out:

``` javascript
	foo.off();
```

O fei-d.js é open-source e qualquer um pode contribuir para a sua melhoria, ele está no [github](https://github.com/flowck/fei-d) juntamente com a licença [WFTPL](http://www.wtfpl.net/).