# jupyter-lab-notebook-docker

Este tutorial explica como subir docker com o Jupyter Lab.

### HÁ ALGUM PRÉ-REQUISITO PARA ESTE TUTORIAL FUNCIONAR?
Sim, pois você já deve o Docker instalado em sua máquina.
Caso você ainda não tenha, veja como instalar na documentação do docker. 
- Para Mac: https://docs.docker.com/docker-for-mac/install/
- Para Windows: https://docs.docker.com/docker-for-windows/install/
- Para Linux: https://docs.docker.com/engine/install/

### Saiba o que é Docker


## Passo a Passo para preparação do ambiente

> *OBSERVAÇÃO*:
>> O passo a passo deste tutorial foi construído no Linux Ubuntu 20.04 on Windows (WLS). No entanto, os passos nos demais sistemas são os mesmos.
>> * Utilize o PowerShell caso a instalação seja no Windows;
>> * Utilize o ..... caso a instalação seja no Mac; ou
>> * Utilize o Terminal caso a instalação seja no Linux.

### Passo 1

Criar diretório de trabalho. Será a partir  Baixar os arquivos do Github num diretório da máquina...
   Eu criei ./desenv/docker-jupyter-extensible-master


### Passo 2

Baixe o ZIP destacado na imagem abaixo.

![image](https://user-images.githubusercontent.com/29760189/173156732-a2ab31f5-3c82-4454-b907-09b57322f00a.png)

O arquivo ZIP deve ser descompactado no diretório de trabalho.

### Passo 3

![image](https://user-images.githubusercontent.com/29760189/173157135-cf92b505-d48c-4b1f-bdab-984a392ff35f.png)

No diretório de trabalho, onde está o arquivo Dockerfile (imagem acima), execute o comando:

> docker build .

Esse comando vai instalar um conjunto de pacotes que estão no arquivo Dockerfile e no requirements.txt

Após esse comando, tudo deve estar instalado.

### Passo 4

Vamos iniciar o JupyterLab com o comando abaixo...

> docker-compuse up

![image](https://user-images.githubusercontent.com/29760189/173157784-d5d63bd2-403c-4115-8cf9-f33e8bddcbf0.png)

Abra o navegador de preferência e cole uma das URLs mostradas ao final. Exemplo na imagem acima.

### Passo 5

Agora é só usar o Jupyter Lab !!!

![image](https://user-images.githubusercontent.com/29760189/173157999-a6500058-07d4-46bb-9c16-d396a964b250.png)


### Passo 6 

Para interromper o Jupyter Lab, vá ao terminal e tecle <Ctrl> + <C>
   
