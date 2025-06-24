
# 🌐 Mapeamento de Portas no Docker

Ao executar containers que oferecem **serviços acessíveis via rede** (como aplicações web), é necessário compreender o uso e o mapeamento de **portas** no Docker.

---

## 🚧 Isolamento de Rede

Por padrão, cada container Docker tem sua **própria interface de rede isolada**. Isso significa que, mesmo que um serviço esteja rodando internamente (como uma aplicação na porta 80), ele **não é acessível externamente** — a não ser que façamos o mapeamento correto.

---

## 🔌 Tipos de Mapeamento de Porta

### 1. `-P` (maiúsculo) – Mapeamento Automático

```bash
docker run -d -P dockersamples/static-site
```

- O Docker escolhe portas aleatórias do **host** e as conecta às portas expostas pelo **container** (como 80 e 443).
- Podemos verificar o mapeamento com:

```bash
docker port <container_id>
```

Exemplo de saída:

```
80/tcp -> 0.0.0.0:49154
443/tcp -> 0.0.0.0:49153
```

Acesse no navegador via:  
👉 `http://localhost:49154`

---

### 2. `-p` (minúsculo) – Mapeamento Manual

```bash
docker run -d -p 8080:80 dockersamples/static-site
```

- A porta **8080 do host** é redirecionada para a porta **80 do container**.
- Acesse diretamente via:  
👉 `http://localhost:8080`

---

## 🔄 Outras Dicas

- Use `-d` para rodar o container em **background** (modo detached), sem travar o terminal.
- Para encerrar e remover um container de forma imediata:

```bash
docker rm <container_id> --force
```

---

## ✅ Conclusão

- Containers possuem isolamento de rede por padrão.
- Para acessar serviços internos, como sites ou APIs, é **obrigatório mapear portas**.
- Você pode deixar o Docker escolher portas aleatórias com `-P`, ou escolher explicitamente com `-p <host>:<container>`.

---

> 💡 Dica: Sempre verifique `docker ps` e `docker port` para entender o estado atual das portas expostas.
