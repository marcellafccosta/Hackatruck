
<p align="center">
  <img src="desafio9.gif" width="400">
</p>

# 🧩 Desafio 9 — Catálogo de Personagens de Hogwarts

Este desafio consiste em um app SwiftUI que consome a API pública de Harry Potter e exibe personagens filtrados por casa. O app apresenta estilo visual temático com base na casa selecionada e exibe os dados dos personagens em uma tela detalhada.

---

## ✨ Funcionalidades

- Seleção de casa via botões personalizados com cores e brasões.
- Estilização da tela de acordo com a casa escolhida.
- Listagem dos personagens da casa selecionada.
- Tela com detalhes individuais do personagem.
- Imagens carregadas dinamicamente da web.
- Consumo da API: [hp-api.onrender.com](https://hp-api.onrender.com/api/characters)

---

## 🧠 Técnicas utilizadas

- Arquitetura **MVVM (Model-View-ViewModel)** para organização do código:
  - `Model.swift`: estrutura `HarryP` para representar os dados do personagem.
  - `ViewModel.swift`: lógica de consumo da API e gerenciamento da lista de personagens com `@Published`.
  - `ContentView.swift` e `CharacterView.swift`: interface e navegação.
- `@StateObject`, `@Published`, `ObservableObject` para gerenciamento de estado reativo.
- Navegação com `NavigationStack` e passagem de dados entre views.
- Layout com `ScrollView`, `ZStack`, `VStack`, e botões personalizados.
- `AsyncImage` para imagens externas.


