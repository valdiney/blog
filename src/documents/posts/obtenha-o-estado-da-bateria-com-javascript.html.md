---
layout: post
title: Obtenha o estado da bateria com o Javascript
tags:  js &nbsp;bateria
image: img/battery.jpg
thumb: img/battery_thumb.jpg
resumo: Das inumeras API novas do Javascript uma delas te permite controlar o estado da bateria do seu dispositivo. <i>Han, como assim?</i> Sim, com ela você terá acesso ao estado de carga da sua bateria através da sua web app [...]
autor: Flowck
date: 2013-12-11
id: bateria_javascript
---

Das inúmeras APIs novas do Javascript uma delas te permite controlar o estado da bateria do seu dispositivo. <i>Han, como assim?</i> Sim, com ela você terá acesso ao estado de carga da sua bateria através da sua web app.

Battery Status é o nome da API que provê ao desenvolvedor informações sobre o estado de carga da bateria assim também como a possibilidade de executar determinadas funções a cada mudança no estado da mesma através de eventos. 

OBS: Actualmente está API é suportada apenas pelo <b>Mozilla Firefox</b> e pelo Chrome para Android, isto porque o Battery Status ainda não foi aprovado pela W3C mas é um candidato a recomendação.

### Vamos ao código

A propriedade <b>battery</b> é definida com o objecto <b>navigator</b>, deste modo ele é declarado desta forma: 

``` javascript
	navigator.battery
```
Ok, o código acima já é um começo mas depois disto surgem as propriedades e os eventos:
### level

A propriedade <b>level</b> retorna o estado de carga da bateria com números de 0 a 1. Ex: 0.5 que representa 50%.

``` javascript
	var bateria = navigator.battery;
	// Obter o estado
	var estado = bateria.level;
	// Mostrar na pagina o estado da bateria
	document.write(estado);
```
Dependendo do nível de carga da sua bateria o resultado será um número ente 0 e 1, no meu caso foi 0.56 porque o nível de carga da bateria do meu note estava nos 56%. No mundo real apresentar 0.56 como estado de carga para o utilizador é algo um tanto quanto insano, por isso podemos converter este valor em uma percentagem multiplicando o mesmo por 100:

``` javascript
	var estado = bateria.level * 100;
	// Mostrar
	document.write(estado + '%');
```

### charging

Esta propriedade permite saber se a bateria está a carregar ou não através do valor boleano (<i>true/false</i>) por ela retornada.

``` javascript
	var aCarregar =  bateria.charging;
	// Mostrar
	document.write(aCarregar);
```

O código acima retorna <i>true</i> se a bateria estiver a carregar e <i>false</i> caso não estiver. Com base nisso podemos criar um simples condição:

``` javascript
	if ( aCarregar === true ) {
		document.write('A bateria está a carregar');
	} else {
		document.write('A bateria não está a carregar');
	}
```

### chargingTime e dischargingTime

A primeira propriedade referem-se ao tempo que a bateria levaria até ser carregada completamente, ela retorna um número caso o notebook ou smartphone estiver a carregar, senão ele retorna a string <i>Infinity.</i>
``` javascript
	// Tempo 
	var tempoAteCarregar = bateria.chargingTime;
	document.write(tempoAteCarregar);
```

O dischargingTime é muito semelhante a propriedade discrevida acima só que ele retorna o tempo que a bateria levaria para descarregar-se.
``` javascript
	// tempo de descarga
	var tempoDeDescarga = bateria.dischargingTime;
	document.write(tempoDeDescarga);
```
<b>obs</b>: Estas duas propriedades retornam o tempo em segundos então para obter os minutos será necessário dividi-lo por 60.

### Os Eventos

Para lidar com as alterações do estado da bateria de uma forma mais decente, evitando o uso de <i>if's</i> e <i>else's</i> desnecessariamente foram providos 4 eventos:

### oncharginchange

Evento acionado quando houver uma mudança no estado da bateria enquanto é carregada.
``` javascript
	bateria.onchargingchange = function() {
		console.log('Alguma coisa');
	}
```

### onchargingtimechange e ondischargintimechange

Evento acionado quando houver uma atualização do tempo que a bateria levaria para ser completamente carregada ou descarregada.
``` javascript
	// onchargingtimechange 
	bateria.onchargingtimechange = function() {
		console.log('Alguma coisa');
	}
	// ondischargintimechange
	bateria.ondischargingtimechange = function() {
		console.log('Alguma coisa');
	}
```

### onlevelchange

O nome já diz tudo, este evento é acionado quando houver uma mudança no estado de carga da bateria.
``` javascript
	bateria.onlevelchange = function() {
		console.log('Houve uma mudança no estado da bateria');
	}
```

Ok, vimos bastante código mas você talvez faça a seguinte pergunta: <i>Quando é que eu vou usar isso?</i> Apesar de funcionar perfeitamente nos notebooks essa API tem o seu foco centrado para os dispositivos mobiles, e neste ambiente em alguns casos é crucial saber o estado da bateria para que operações não sejam perdidas ou mesmo para reduzir a utilização de alguns recursos usados pelo app. Claro que isto também é aplicável fora dos ambiente mobiles.

### Demos

* [BatteryLevel](https://developer.mozilla.org/en-US/demos/detail/batterylevel)
* [Battery.js](http://pstadler.sh/battery.js/)

### Referências

* [MDN](https://developer.mozilla.org/en-US/docs/WebAPI/Battery_Status)