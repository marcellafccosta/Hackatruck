
<p align="center">
  <img src="Desafio-8-funcionando.gif" width="400">
</p>

## 🧩 Desafio 8

O Desafio 8 consiste em um app que combina **Picker, MapKit e Sheet** para exibir detalhes de destinos turísticos. O usuário escolhe um local por meio de um `Picker`, visualiza sua posição no **mapa interativo**, e ao tocar no marcador (`Annotation`) vê uma **tela de detalhes** com foto, descrição e localização.

---

### ✨ Funcionalidades principais

- `Picker` para selecionar um local turístico.
- Mapa com `Annotation` posicionado na latitude/longitude do local selecionado.
- Ao tocar no **marcador (pin)** do mapa, uma **`sheet` (modal)** é exibida com:
  - Nome
  - Imagem do local (via URL)
  - Descrição completa

---

### 🧠 Conceitos aplicados

- `Picker` como seletor de local.
- `Map` e `Annotation` para visualização geográfica.
- `@State` para armazenar o local atual e controlar exibição do sheet.
- `sheet(isPresented:)` acionada ao tocar no marcador.
- `AsyncImage` para exibir imagens carregadas de links externos.
- `@Environment(\.dismiss)` na `SheetView` para permitir o fechamento.

---

### 💡 Fluxo de interação do usuário

1. O usuário escolhe um local pelo `Picker`.
2. O app mostra o local escolhido no mapa com um **marcador personalizado**.
3. O usuário toca no marcador.
4. Uma **tela modal (sheet)** se abre com todas as informações do destino.

