# Roteiro da apresentação

Sugestão de tempo: 8 a 10 minutos. Divida a fala entre os 3 membros.

---

## 1. Explicar o fluxo utilizado (≈ 2 min)

**O que falar:**

- "Usamos o fluxo **feature branch**: a `main` é a versão estável e cada pessoa trabalha em uma branch própria."
- "Cada branch nasce da `main`, recebe commits pequenos e volta para a `main` por **Pull Request**."
- "Todo merge na `main` dispara o deploy automático."

**Diagrama para mostrar (pode desenhar no quadro/slide):**

```
main        ●────────●────────●────────●────●  (deploy)
             \        ↑        ↑        ↑
cursos        ●──●────┘        │        │
professores            ●──●────┘        │
contato                         ●──●──●─┘
```

---

## 2. Mostrar branches (≈ 1 min)

No GitHub: **Code → botão de branches → View all branches**.

No terminal:

```bash
git branch -a
```

Resultado esperado: `main`, `feature/cursos`, `feature/professores`, `feature/contato`.

---

## 3. Mostrar commits (≈ 2 min)

No GitHub: **Commits** (ou Insights → Network).

No terminal:

```bash
git log --oneline --graph --all --decorate
```

**Apontar:**
- Pelo menos 3 autores diferentes
- Mensagens claras (`feat:`, `style:`, `docs:`)
- Os commits de merge juntando as branches na `main`
- Pelo menos 5 commits no total

---

## 4. Demonstrar o deploy (≈ 2 min)

**Netlify:**
1. Acesse https://app.netlify.com → **Add new site → Import an existing project**
2. Conecte o GitHub e escolha o repositório `3-tech-cursos`
3. Branch: `main` | Build command: vazio | Publish directory: `/`
4. Clique em **Deploy** e abra o link gerado

**Vercel (alternativa):**
1. Acesse https://vercel.com → **Add New → Project**
2. Importe o repositório do GitHub
3. Framework Preset: **Other** | deixe o build vazio
4. Clique em **Deploy** e abra o link gerado

**Demonstração ao vivo (o mais convincente):** edite o título em `index.html`, faça commit na `main` e mostre o site atualizando sozinho.

---

## 5. Mostrar a resolução de conflitos (≈ 1 min)

Os critérios pedem "resolução de conflitos". Para ter o que mostrar, **provoque um conflito de propósito**: duas pessoas alteram a mesma linha do `<footer>` em branches diferentes e depois fazem o merge.

Ao dar o merge, o Git marca o arquivo assim:

```
<<<<<<< HEAD
<p>© 2026 3-Tech Cursos.</p>
=======
<p>© 2026 3-Tech Cursos. Todos os direitos reservados.</p>
>>>>>>> feature/contato
```

Passos: escolher a versão final, apagar as marcações, depois:

```bash
git add index.html
git commit -m "fix: resolve conflito no footer"
```

---

## Checklist final antes de apresentar

- [ ] Repositório criado no GitHub e todos os membros adicionados como colaboradores
- [ ] 3 membros com commits (confira em Insights → Contributors)
- [ ] Mínimo 5 commits
- [ ] Mínimo 3 branches
- [ ] Merge feito na `main`
- [ ] README preenchido com nomes e link do site
- [ ] Site publicado e link funcionando
