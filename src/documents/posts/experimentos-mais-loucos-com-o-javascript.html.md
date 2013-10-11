---
layout: post
title: Experimentos mais loucos com o javascript
tags:  experimentos &nbsp;js
image: img/JSexperiments.jpg
thumb: img/JSexperiments_thumb.jpg
resumo: Com imaginação e criatividade podemos tornar poderosa qualquer linguagem de programação. O mesmo acontece com o Javascript que para alguns ainda é um mito o facto dela estár alem da criação de [...]
autor: Flowck
date: 2013-10-06
id: loucas_javascript
---

Com imaginação e criatividade podemos tornar poderosa qualquer linguagem de programação. O mesmo acontece com o Javascript que para alguns ainda é um mito o "facto dela estár alem da criação de menus dropdown". Actualmente uma das gratificações dos desenvolvedores Javascript é a possibilidade de criar sistemas completos apenas com Javascript como linguagem de programação sem a necessidade de usar outra linguagem para o back-end, isso graças ao [NodeJS](www.nodejs.org). 
<br><br>
Nas mãos de criativos a linguagem programação que pertence a lista das mais populares da web, ou seja, o Javascript permitiu as implementações mais loucas e em alguns casos com apenas 2 linhas de código. 
<br>
### [1 - Deteção de faces como Javascript](http://liuliu.me/ccv/js/nss/)

Um desenvolvedor chinês chamado Liu Liu implementou um algoritmo de [deteção de faces](https://github.com/liuliu/ccv/tree/unstable/js) em js usando o elemento canvas. O algoritmo foi implementado em cima de uma porta javascript baseado numa biblioteca Vision em C. Existe também uma [versão](http://facedetection.jaysalvat.com/) em jquery que se baseia neste projecto.

### [2 - Maquina de Turing em 133 bytes de javascript](http://swizec.com/blog/a-turing-machine-in-133-bytes-of-javascript)

Uma máquina de Turing é a forma mais simples de um computador. O conceito foi inventado por Alan Turing em 1936. Este foi o primeiro computador inventado (só no papel). Aparentemente um criativo/louco chamado [Swizec Teller](https://github.com/Swizec) decidiu escrever um simulador da máquina de Turing não determinística, em poucas linhas de JavaScript.
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

### [3 - Java Virtual Machine em Javascript](https://github.com/nurv/BicaVM)

Parece impensável mas é real, ele não é um conversor de código Java para Javascript mas sim uma pseudo JVM que executa códigos Java. O desenvolvedor diz o seguinte na [descrição do projecto](https://github.com/nurv/BicaVM): <i>At the moment it runs Java code, but is more like a proof of concept than a
real JVM. A lot of work is required to make this JVM run Java code.</i> Isto significa que o projecto não é uma JVM a 100%, mas ele prova que com um pouco de mais trabalho é possivel chegar lá.

### [4 - Emulador x86 escrito em Javascript](http://bellard.org/jslinux/)

Já imaginou a possibilidade de executar um pc no seu navegador? Se não este [projecto](http://bellard.org/jslinux/tech.html) demonstra claramente que é possível executar um pc dentro do seu navegador com JavaScript. Claro que um kernel Linux pode ser executado dentro dele, assim você pode ter um PC completo dentro do seu browser. 

### [5 - Controlar Hardware com Javascript]()

Você com certeza já deve ter ouvido ou lido qualquer coisa sobre o Arduíno, senão, saiba que ele é uma plataforma de hardware desenhada para rapida prototipação de projectos em electrnónica e robotica. Esta plataforma de hardware é totalmente amigável aos desenvolvedores de software por lhes dar a possibilidade de a programar em diversas linguagens, naturalmente que o Javacript não ficou fora dessa lista.
<br><br>
Isso só é possível graças ao <i>game changer</i> [NodeJs](www.nodejs.org). Existem [diversos projectos](https://github.com/search?l=JavaScript&q=arduino&ref=cmdform&type=Repositories) na web sobre Javascript + Arduíno mas dentre eles o projecto [Noduino](http://semu.github.io/noduino/) fica destacado aqui, ele é um framework que permite controlar o Arduíno atravez da web usando Nodejs, HTML5 e [socket.io](http://socket.io/).

``` javascript
    var Noduino = new NoduinoObj({debug: true, host: 'http://localhost:8090'}, Connector);
    Noduino.connect(function(err, board) {
      if (err) { return console.log(err); }
      
      console.log('Connected to board');
    });
```
### CONCLUSÃO

Em 19 anos de existencia o javascript está a se superar graças aos desenvolvedores que passam horas e horas em frente do cumputador com uma caneca de café a programar, seja para terminar um trabalho ou provar um conceito. Limitações existem e sempre existirão.

### Referencias

* [Yeblon](http://yeblon.com/the-craziest-javascript-implementations)
