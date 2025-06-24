
# 🐳 Ciclo de Vida de Containers com Docker

Este documento resume conceitos e comandos fundamentais relacionados à criação, execução, interrupção e interação com containers Docker.

---

## 🚀 Execução com `docker run`

O comando `docker run` cria e inicia um container a partir de uma imagem. Por padrão, ele executa um comando no container. Exemplo:

```bash
docker run ubuntu sleep 1d
```

> Esse container ficará em execução por 1 dia, mantendo-se ativo por meio do comando `sleep`.

---

## 🔄 Interrompendo e Reiniciando Containers

Containers podem ser interrompidos com:

```bash
docker stop <container_id>
```

E reiniciados com:

```bash
docker start <container_id>
```

- `docker ps` lista containers em execução.
- `docker ps -a` mostra todos, inclusive os que já foram finalizados.

> O status é reiniciado a cada nova execução.

---

## 🧠 Interatividade com `docker exec`

Para interagir com um container em execução:

```bash
docker exec -it <container_id> bash
```

- `-i`: mantém a entrada padrão ativa.
- `-t`: aloca um terminal.

Exemplo de uso dentro do container:

```bash
cd
touch arquivo.txt
```

Esses arquivos são isolados do sistema principal por meio de namespaces.

---

## ⏸️ Pausar e Retomar Containers

Um container pode ser pausado e retomado:

```bash
docker pause <container_id>
docker unpause <container_id>
```

Durante a pausa, não é possível interagir com o container (`docker exec` falhará).

---

## ⚡ Parar Imediatamente

Por padrão, o `docker stop` espera 10 segundos antes de finalizar o container. Para encerrar imediatamente:

```bash
docker stop -t=0 <container_id>
```

---

## 🗑️ Remoção de Containers

Um container parado pode ser removido com:

```bash
docker rm <container_id>
```

---

## ⚠️ Containers são Efêmeros

- Ao encerrar ou excluir um container, os dados criados internamente (como arquivos) serão perdidos.
- Ao criar um novo container com `docker run`, ele não "lembra" dos dados anteriores.

---

## 🧪 Execução Interativa Direta

É possível iniciar o container já em modo interativo, sem usar `sleep`:

```bash
docker run -it ubuntu bash
```

Se o terminal for fechado, o container é finalizado, pois não há mais processos ativos.

---

## 📌 Conclusão

- Containers Docker são isolados e temporários por padrão.
- A interação e o controle do ciclo de vida são feitos por comandos como `start`, `stop`, `exec`, `pause` e `rm`.
- Para preservar dados entre execuções, será necessário configurar volumes — tópico abordado futuramente.

---

> 💬 Dica: Pratique cada comando para fixar seu comportamento. Docker é mais compreendido na prática do que na teoria.







