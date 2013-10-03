---
layout: post
title: Experimentos mais loucos com o javascript
tags:  &nbsp;suporte
image: img/JSexperiments.jpg
thumb: img/JSexperiments_thumb.jpg
resumo: Com imaginação e criatividade podemos tornar poderosa qualquer linguagem de programação. O mesmo acontece com o Javascript que para alguns ainda é um mito o "facto dela estár alem da criação de [...]
autor: Flowck
date: 2013-10-01
id: loucas_javascript
---

Com imaginação e criatividade podemos tornar poderosa qualquer linguagem de programação. O mesmo acontece com o Javascript que para alguns ainda é um mito o "facto dela estár alem da criação de menus dropdown". Actualmente a maior gratificação para os desenvolvedores Javascript é a possibilidade de criar sistemas completos apenas com Javascript como linguagem de programação sem a necessidade de usar outra linguagem para o back-end, isso graças ao [NodeJS](www.nodejs.org). 
<br><br>
Nas mãos de criativos a linguagem programação que pertence a lista das mais populares da web, ou seja, o Javascript permitiu as implementações mais loucas e em alguns casos com apenas 2 linhas de código. 
<br>
### [1 - Deteção de faces como Javascript](http://liuliu.me/ccv/js/nss/)

Um desenvolvedor chinês chamado Liu Liu implementou um algoritmo de [deteção de faces](https://github.com/liuliu/ccv/tree/unstable/js) em js usando o elemento canvas. O algoritmo foi implementado em cima de uma porta javascript baseado numa biblioteca Vision em C. Existe também uma [versão](http://facedetection.jaysalvat.com/) em jquery que se baseia neste projecto.

### [2 - Maquina de Turing em 133 bytes de javascript](http://swizec.com/blog/a-turing-machine-in-133-bytes-of-javascript)

Uma máquina de Turing é a forma mais simples de um computador. O conceito foi inventado por Alan Turing em 1936. Este foi o primeiro computador inventado (só no papel). Aparentemente um criativo/louco chamado [Swizec Teller](https://github.com/Swizec) decidiu escrever um simulador da máquina de Turing não determinística, em 20 linhas de JavaScript.
``` javascript
	function tm(I,tape,end,state,i,cell,current) {
    i = 0;
    while(state != end) {
        cell = tape[i];
        current = (cell) ? I[state][cell] : I[state].B;
        if(!current)
            return false;
        tape.splice(i, 1, current.w);
        i += current.m;
        state = current.n;
    }
    return tape;
}
```

### [Java Virtual Machine em Javascript](https://github.com/nurv/BicaVM)

Até parece um outro nível de insanidade mas não, ele também não é um conversor de código Java para Javascript mas sim uma JVM que executa códigos Java. O desenvolvedor diz o seguinte na [descrição do projecto](https://github.com/nurv/BicaVM): 

At the moment it runs Java code, but is more like a proof of concept than a
real JVM. A lot of work is required to make this JVM run Java code

Java Virtual Machine JVM written in JavaScript sounds like another level of insanity but it’s true. This isn’t a Java to JavaScript translator but a real JVM that runs byte code. This means it could run any language that compiles to byte code.

### Referencias

* [Yeblon](http://yeblon.com/the-craziest-javascript-implementations)
