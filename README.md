# 🐳 Docker

Este repositório contém anotações, comandos e conceitos fundamentais sobre Docker, uma das tecnologias mais utilizadas para criação e execução de containers.

---

## 🧠 O que é Docker?

Docker é uma plataforma que permite empacotar aplicações e suas dependências em containers — unidades leves, portáteis e isoladas que podem ser executadas em qualquer ambiente que suporte Docker.

### 🧱 Container vs Máquina Virtual

| Container                           | Máquina Virtual                          |
|-------------------------------------|------------------------------------------|
| Compartilha o kernel do host        | Executa seu próprio sistema operacional  |
| Mais leve e rápido                  | Mais pesado e consome mais recursos      |
| Ideal para microserviços            | Ideal para ambientes isolados e completos |

Containers não virtualizam um sistema inteiro, apenas o necessário para rodar a aplicação — o que os torna muito mais eficientes que VMs tradicionais.

---

## ⚙️ Dependências e Variáveis de Ambiente

Para rodar Docker no Windows, algumas dependências precisam estar ativas:

- **WSL 2 (Windows Subsystem for Linux)**: necessário para rodar containers Linux no Windows.
- **Distribuição Linux** (como Ubuntu, via Microsoft Store).
- **Virtualização habilitada na BIOS**.
- **Docker Desktop**: interface oficial que integra o Docker ao sistema operacional.

Além disso, o Docker pode utilizar variáveis de ambiente para configurar caminhos, redes, volumes, entre outros.

---

## 📦 Imagens (Images)

As **imagens Docker** são modelos prontos com tudo que a aplicação precisa para rodar (binários, dependências, bibliotecas).

Você pode:
- Baixar imagens do [Docker Hub](https://hub.docker.com/)
- Criar suas próprias imagens com o `Dockerfile`
- Versionar e distribuir imagens entre ambientes

Exemplos de imagens populares:
- `python`
- `node`
- `nginx`
- `mysql`

---

## 🛠 Principais Comandos Docker

Abaixo, uma seleção dos comandos mais úteis para o dia a dia com Docker:

### 🔍 Visualização e gerenciamento

```bash
docker ps               # Lista containers em execução
docker ps -a            # Lista todos os containers (inclusive parados)
docker images           # Lista imagens baixadas
docker stats            # Mostra uso de recursos dos containers
```

### ▶️ Execução de containers
```bash
docker run [imagem]                     # Cria e executa um container
docker run -it ubuntu bash              # Executa interativamente um container Ubuntu
docker exec -it [container_id] bash     # Acessa um container em execução
```

### 🧼 Limpeza

```bash
docker pull [nome]                     # Baixa imagem do Docker Hub
docker build -t nome:tag .             # Cria imagem com base no Dockerfile
docker push nome:tag                   # Envia imagem para o Docker Hub
```

### 🔄 Imagens

````bash
docker pull [nome]                     # Baixa imagem do Docker Hub
docker build -t nome:tag .             # Cria imagem com base no Dockerfile
docker push nome:tag                   # Envia imagem para o Docker Hub
```