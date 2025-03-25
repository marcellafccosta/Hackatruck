## 🧩 Desafios 1, 2 e 3

<table>
  <tr>
    <td align="center">
      <strong>Desafio 1</strong><br>
      <img src="funcionamento/Desafio1.png" width="300">
    </td>
    <td align="center">
      <strong>Desafio 2</strong><br>
      <img src="funcionamento/Desafio2.png" width="300">
    </td>
    <td align="center">
      <strong>Desafio 3</strong><br>
      <img src="funcionamento/Desafio3.png" width="300">
    </td>
  </tr>
</table>

---

### 🧩 Desafio 1

O Desafio 1 foca na criação de uma interface utilizando **formas geométricas coloridas** (retângulos) e no uso adequado das estruturas de layout do **SwiftUI**: `VStack`, `HStack` e `Spacer`.

#### ✨ Funcionalidades principais

- Interface composta por **4 retângulos coloridos**:
  - Vermelho (superior esquerdo)
  - Azul (superior direito)
  - Verde (inferior esquerdo)
  - Amarelo (inferior direito)
- Layout com duas `HStacks` (uma no topo, uma embaixo), organizadas verticalmente por uma `VStack`.
- Uso de `Spacer()` para criar **espaçamento automático e responsivo** entre os elementos.
- Aplicação prática do posicionamento e estruturação visual no SwiftUI.

---

### 🧩 Desafio 2

Neste desafio, o foco está na construção de uma **interface visual agradável e organizada** combinando imagem e texto com o uso de `HStack` e `VStack`.

#### ✨ Funcionalidades principais

- Uma imagem circular do caminhão (`truck`), redimensionada e ajustada com `clipShape(Circle())`.
- Um conjunto de três `Text` com cores diferentes, organizados verticalmente:
  - **"HackaTruck"** em vermelho.
  - **"77 Universidades"** em azul.
  - **"5 regiões do Brasil"** em amarelo.
- Layout responsivo com `HStack(spacing:)` para espaçamento entre imagem e texto.

#### 🧠 Conceitos aplicados

- Uso de `Image()`, `VStack`, `HStack` e estilização com `.foregroundStyle`.
- Prática de alinhamento horizontal e vertical no SwiftUI.

---

### 🧩 Desafio 3

Este desafio propõe uma **interface interativa e personalizada**, que responde ao input do usuário de forma visual e textual.

#### ✨ Funcionalidades principais

- **Imagem de fundo** do caminhão com opacidade ajustada (`.opacity(0.5)`) ocupando toda a tela.
- Texto com mensagem de **boas-vindas personalizada**, usando o nome digitado.
- Campo `TextField` para o usuário digitar o nome.
- Imagem do logo **HackaTruck** redimensionada.
- Botão **"Entrar"** que, ao ser pressionado, exibe um alerta de saudação com o nome informado.

#### 🧠 Conceitos aplicados

- `@State` para controle do nome e do estado do alerta.
- `ZStack` para construção de camadas visuais (imagem de fundo + conteúdo).
- `Spacer()` para espaçamento vertical entre os elementos.
- `Button` com ação que ativa `Alert`.
- Modificadores visuais como `.resizable()`, `.scaledToFit()`, `.alert()` e `.padding()`.
