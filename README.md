# Gitflow Jenkins

- [Sobre](#sobre)
- [Criando o cluster](#criando-o-cluster)
- [Repositórios](#repositórios)

## Sobre
Esse repositório faz parte de um conjunto de repositórios relacionados ao projeto do curso de Jenkins da Udemy.

Nesse em específico está contido os manifestos  e os values dos charts das ferramentas utilizados na esteira do CI/CD.

## Criando o cluster

Para subir o cluster kubernetes juntamente com os charts, pode ser utilizado o arquivo Makefile, para isso basta somente rodar os seguintes comandos:

```bash
$ make # Por padrão ele já irá criar o cluster kubernetes e subir os charts

# Depois é só aplicar os manifestos
$ kubectl apply -f manifests/
```

## Repositórios

- [Jenkins shared libraries](https://github.com/gcostacoelho/jenkins-shared-libraries) - Repositório onde está contido os arquivos das etapas (stages) da Pipeline

- [Helm applications](https://github.com/gcostacoelho/helm-applications) - Esse repositório serve como um repositório de charts, tendo os values dos ambientes e a dependência da aplicação.

- [Sample app](https://github.com/gcostacoelho/sample-app-flask) - Repositório da aplicação que irá servir como teste para ver a pipeline rodando.