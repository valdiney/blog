---
layout: post
title: Passo a passo com o Github - pt. 2
tags: projecto &nbsp;github
image: img/gitRepository.jpg
thumb: img/gitRepository_thumb.jpg
resumo: Lançado em 2008 o Github se tornou moda entre os desenvolvedores de todo o mundo, isto porque ele agrega uma componente mais social com o sistema sistema de controle de versões[...]
autor: Flowck
date: 2013-09-16
id: github_pt2
---

No primeiro post foi demonstrado como se conectar de forma permanente ao github usando o protocolo ssh, já neste post irei apresentar alguns comandos básicos do git, deste modo você já estará apto para versionar os seus projectos.

### O QUE VOCÊ PRECISA SABER

Antes demais você precisa conhecer alguns conceitos, como:

* Repositório: consiste num diretório de trabalho com o histórico completo e habilidade total de acompanhamento das revisões. Ou seja cada projecto é um repositório.

* Commit: consiste em submeter as últimas alterações do código fonte ao repositório e fazer com que estas alterações se tornem parte da versão principal do repositório.

* 

### FUNCIONAMENTO BÁSICO DO GIT

No git cada projecto é um repositório e estes normalmente são armazenados localmente e remotamente. Tanto no repositório local quanto no remoto ficam armazenados todo historico de alterações no projecto, o que possibilita trabalhar mesmo quando se está offline.

Para que o historico de alterações no projecto exista é necessario que alguém os registe, claro. Esse processo é feito através dos commits. 

### INICIAR PROJECTO NO GITHUB

É possível iniciar um projecto no github a partir do [site](www.github.com) cliando em "new repository" ou criando um repositório local e depois publica-lo no github. 

* Vamos proceder com a primeira forma, criando um repositório no [site](www.github.com).

![novo_repositório](../assets/img/newRepository.png)

* Depois de criado, agora será necessario preparar a directoria local. Crie um derectoria para o seu projecto e depois execute o comando "git init" para iniciar um repositório vázio naquela directoria:

![novo_projecto_git](../assets/img/newProject.gif)

* Agora precisamos conectar o repositório local ao repositório remoto. Utilizaremos o camando "git remote add" para adicionar e "git remote -v" para consultar os endereços remotos adicionados.

![add_remote_git](../assets/img/addRemote.gif)

Os comando git remote add tem o seguinte formato "git remote add nome do servidor remoto endereço ssh", exemplo:

``` 
	git remote add github git@github.com:flowck/webvisao.git
```
Quanto ao endereço ssh do repositório você irá encontra-la na pagina incial do seu repositório vázio:

![ssh_address](../assets/img/sshAddress.png)



