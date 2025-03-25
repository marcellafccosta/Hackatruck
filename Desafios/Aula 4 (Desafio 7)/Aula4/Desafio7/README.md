
## 🧩 Desafio 7

Neste desafio, foi desenvolvido um aplicativo que simula uma **lista de músicas**, com visual moderno e interativo, incluindo **detalhes individuais** de cada música e carregamento dinâmico de imagens por URL.

---

### ✨ Funcionalidades principais

- **Lista de músicas** com nome, artista e imagem de capa.
- Imagens das capas carregadas diretamente via **URL (AsyncImage)**.
- Navegação entre telas com **detalhes da música selecionada**.
- Tela de reprodução estilizada com **gradiente de fundo** e **destaque visual da capa da música**.

---

### 🧠 Conceitos aplicados

- `struct Song`: estrutura de dados para armazenar informações da música.
- `List` e `NavigationStack` para exibir e navegar entre os itens.
- `AsyncImage` para carregar imagens a partir de URLs externas.
- `@State` para passagem de dados entre views.
- `LinearGradient` e `ZStack` para estilização de fundo.
