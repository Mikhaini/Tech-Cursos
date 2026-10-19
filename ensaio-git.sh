#!/usr/bin/env bash
# Simulação local do fluxo Git do projeto 3-Tech Cursos.
# Cria 3 branches, vários commits com autores diferentes, um conflito e os merges.
# Serve para ensaiar a apresentação. No trabalho real, cada membro faz o seu
# commit com a própria conta, no próprio computador.

set -e
cd "$(dirname "$0")"

git init -b main
git config user.name "Membro 1"
git config user.email "membro1@exemplo.com"

# Commit inicial: estrutura base e README
git add README.md docs
git commit -m "docs: adiciona README e roteiro da apresentação"

git add css js
git commit -m "style: adiciona estilos base e script do formulário"

git add index.html
git commit -m "feat: cria estrutura base do site"

# Branch 1 - Cursos (Membro 1)
git checkout -b feature/cursos
sed -i 's|<span class="tag">40h • Iniciante</span>|<span class="tag">40h • Iniciante • Online</span>|' index.html
git commit -am "feat: detalha modalidade no curso de lógica"
git checkout main
git merge --no-ff feature/cursos -m "merge: seção de cursos"

# Branch 2 - Professores (Membro 2)
git checkout -b feature/professores
git config user.name "Membro 2"
git config user.email "membro2@exemplo.com"
sed -i 's|Desenvolvedora front-end com 8 anos de experiência.|Desenvolvedora front-end com 8 anos de experiência em produtos web.|' index.html
git commit -am "feat: melhora descrição da professora Ana"
git checkout main
git merge --no-ff feature/professores -m "merge: seção de professores"

# Branch 3 - Contato (Membro 3) e Branch 4 - criada para provocar o conflito
git checkout -b feature/contato
git config user.name "Membro 3"
git config user.email "membro3@exemplo.com"
sed -i 's|<p>© 2026 3-Tech Cursos. Todos os direitos reservados.</p>|<p>© 2026 3-Tech Cursos - contato@3tech.com</p>|' index.html
git commit -am "feat: adiciona e-mail de contato no rodapé"

git checkout main
git config user.name "Membro 1"
git config user.email "membro1@exemplo.com"
sed -i 's|<p>© 2026 3-Tech Cursos. Todos os direitos reservados.</p>|<p>© 2026 3-Tech Cursos. Todos os direitos reservados. CNPJ 00.000.000/0001-00</p>|' index.html
git commit -am "docs: adiciona CNPJ no rodapé"

echo
echo "==> Merge com conflito (esperado). Resolva em index.html, depois:"
echo "    git add index.html && git commit -m 'fix: resolve conflito no footer'"
git merge --no-ff feature/contato || true
