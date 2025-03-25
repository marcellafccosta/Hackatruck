
## 🧩 Desafio 5

Neste desafio, o app simula um **menu com abas** (TabView), permitindo ao usuário alternar entre diferentes visualizações de animais. Cada tela possui um fundo colorido e um ícone representativo do animal.

---

### ✨ Funcionalidades principais

- Navegação por **abas** (`TabView`) com ícones e nomes dos animais.
- Cada aba representa um animal diferente:
  - **Coelho** (`hare.fill`)
  - **Cachorro** (`dog.fill`)
  - **Gato** (`cat.fill`)
- Cada tela possui:
  - Um **fundo colorido** diferente.
  - Um ícone do animal correspondente no centro da tela.
- Visualização adicional de lista com os nomes e ícones dos animais.

---

### 🧠 Conceitos aplicados

- `TabView` com `.tabItem` para navegação.
- `NavigationView` com `List` para exibir itens.
- `Image(systemName:)` usando SF Symbols para ícones.
- `ZStack` e `VStack` para organização visual.
- `Color.ignoresSafeArea()` para estilizar o fundo.

---

## 🧩 Desafio 6

O Desafio 6 propõe um app com **múltiplos modos de navegação**, cada um levando a uma tela diferente. O objetivo é explorar o uso de **NavigationStack**, **NavigationLink** e **Sheets (modais)** no SwiftUI.

---

### ✨ Funcionalidades principais

- **Tela principal** com logo, fundo personalizado e botões de acesso aos modos.
- Três modos diferentes:
  - **Modo 1:** redireciona para uma nova tela via `NavigationLink`.
  - **Modo 2:** é exibido em um **modal sheet** (`.sheet`).
  - **Modo 3:** redireciona para outra view com layout específico.
- Uso de **cores customizadas** e **logo do HackaTruck**.
- Estilização visual com `.buttonStyle`, `.tint`, `.shadow`, `.controlSize`.

---

### 🧠 Conceitos aplicados

- `NavigationStack` e `NavigationLink` para navegação por push.
- `@State` com `.sheet(isPresented:)` para exibição de modais.
- Organização visual com `ZStack`, `VStack` e `Spacer()`.
- Uso de `Assets.xcassets` para imagens e cores personalizadas.
