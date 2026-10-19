# 3-Tech Cursos

Site institucional da **3-Tech Cursos**, empresa que oferece cursos de tecnologia.

🔗 **Site publicado:** _colar aqui o link do Netlify/Vercel_

## Conteúdo do site

- Cursos
- Professores
- Diferenciais
- Formulário de contato (com validação em JavaScript)

## Tecnologias

- HTML5
- CSS3 (layout responsivo com Grid e Flexbox)
- JavaScript (validação do formulário)
- Git e GitHub (versionamento e trabalho em equipe)
- Netlify / Vercel (deploy)

## Estrutura de arquivos

```
3-tech-cursos/
├── index.html
├── css/
│   └── style.css
├── js/
│   └── script.js
├── docs/
│   └── roteiro-apresentacao.md
└── README.md
```

## Equipe

| Membro | Responsabilidade | Branch |
|--------|------------------|--------|
| Membro 1 | Seção de Cursos | `feature/cursos` |
| Membro 2 | Seção de Professores | `feature/professores` |
| Membro 3 | Diferenciais e Formulário de contato | `feature/contato` |

> Substituir "Membro X" pelos nomes reais da equipe.

## Fluxo de trabalho (Git)

Usamos um fluxo simples baseado em branches de funcionalidade:

1. `main` guarda sempre a versão estável e publicada.
2. Cada membro cria uma branch a partir da `main` (`feature/...`).
3. Commits pequenos, com mensagens claras (`feat:`, `fix:`, `docs:`, `style:`).
4. Ao terminar, abre um **Pull Request** para a `main`.
5. Outro membro revisa e faz o **merge**.
6. A cada merge na `main`, o Netlify/Vercel publica o site automaticamente.

### Padrão de commits

| Prefixo | Uso |
|---------|-----|
| `feat:` | nova funcionalidade ou seção |
| `fix:` | correção de erro |
| `style:` | ajustes visuais (CSS) |
| `docs:` | documentação |

## Como rodar localmente

```bash
git clone <url-do-repositorio>
cd 3-tech-cursos
# abra o index.html no navegador
```

## Deploy

O site é publicado a partir da branch `main`, sem build (site estático):
- **Build command:** nenhum
- **Publish directory:** `/` (raiz)
