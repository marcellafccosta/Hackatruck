## 🧩 Desafio 4

<p align="center">
  <img src="Desafio4.gif" width="400">
</p>

O Desafio 4 propõe a criação de um app que calcula a **velocidade média** com base na distância e no tempo informados pelo usuário, e exibe um **animal correspondente** à velocidade alcançada.

---

### ✨ Funcionalidades principais

- Entrada de **distância (km)** e **tempo (horas)** via `TextField`.
- Cálculo da **velocidade média** (`distância / tempo`).
- Exibição de um **animal representativo** conforme a velocidade:
  - Ex: tartaruga, avestruz, guepardo etc.
- Mudança **automática da imagem do animal** e da **cor de fundo**.
- Interface construída com `VStack`, `TextField`, `Button` e `Image`.

---

### ⚙️ Lógica de funcionamento

1. O usuário digita a distância percorrida (em km) e o tempo (em horas).
2. Ao clicar no botão **"Calcular"**, o app calcula a velocidade média.
3. Com base no resultado, o app:
   - Atualiza a imagem com o animal correspondente.
   - Muda a cor de fundo.
4. A imagem exibida é dinâmica, baseada no valor da variável `animal`.

---

### 🧠 Conceitos aplicados

- `@State` para variáveis reativas (entrada do usuário e resultado).
- `TextField` com formatação numérica.
- `ZStack` para sobreposição da cor de fundo e do conteúdo.
- Uso de `Image()` para exibir imagens do catálogo de ativos (`Assets.xcassets`).
- `Color(cor).ignoresSafeArea()` para colorir todo o fundo da tela.
