📱 App FuelCalc – iOS Lab

Este projeto foi desenvolvido como parte das atividades práticas do curso Escola iOS Lab, com o objetivo de aprender os conceitos fundamentais do SwiftUI, controle de estado com `@State`, uso de `enum`, conversão segura de strings com `guard let`, e implementação de lógicas básicas em funções (`func`). O aplicativo permite calcular quantos litros foram abastecidos com base no valor pago e no preço do combustível selecionado.

🧑‍💻 Desenvolvedor: Leandro Vansan de Morais  
📅 Data: 15 de julho de 2025  
🏫 Curso: Escola iOS Lab  
⛽️ Atividade: App para cálculo de litros abastecidos

---

🎯 Objetivo do Projeto

- Desenvolver uma interface intuitiva e funcional com SwiftUI.
- Aplicar lógica de programação básica com `guard let` e `func`.
- Utilizar `enum` para limitar as opções do Picker.
- Explorar o uso de `@State` para controle de estado reativo.
- Aplicar design moderno com `LinearGradient` e `glassEffect`.
- Fornecer logs úteis de depuração no console do Xcode.

---

🚀 Funcionalidades

- Inserção do **valor pago** e do **preço por litro** de combustível.
- Seleção do tipo de combustível (**gasolina**, **etanol**, **diesel**) via Picker.
- Validação dos valores inseridos para evitar entradas inválidas.
- Cálculo automático da quantidade de litros abastecidos.
- Design adaptável ao tema claro e escuro do sistema.
- Interface com efeito visual de vidro (glassmorphism).

---

🧑‍🏫 Conceitos Aprendidos

🔹 `@State`  
Controla valores mutáveis que afetam a interface, como os campos de entrada e o resultado calculado.  
📚 [Documentação oficial](https://developer.apple.com/documentation/swiftui/state)

🔹 `enum`  
Define os tipos válidos de combustível e permite controlar as opções disponíveis no Picker.  
📚 [Documentação Swift enum](https://www.swift.org/documentation/#enumerations)

🔹 `guard let`  
Realiza a conversão segura de `String` para `Double`, evitando erros quando o usuário digita um valor inválido.  
📚 [Documentação Swift guard](https://www.swift.org/documentation/#control-flow)

🔹 `TextField` com `.keyboardType(.decimalPad)`  
Permite entrada numérica com ponto decimal, ideal para valores monetários.  
📚 [Documentação TextField](https://developer.apple.com/documentation/swiftui/textfield)

🔹 `Picker`  
Permite ao usuário escolher entre diferentes opções de combustível com visual de segmentos.  
📚 [Documentação Picker](https://developer.apple.com/documentation/swiftui/picker)

🔹 `LinearGradient`  
Cria um fundo com degradê que se adapta automaticamente ao modo claro ou escuro.  
📚 [Documentação LinearGradient](https://developer.apple.com/documentation/swiftui/lineargradient)

🔹 `@Environment(\.colorScheme)`  
Detecta o modo de cor atual (claro ou escuro) do sistema para adaptar o layout dinamicamente.  
📚 [Documentação EnvironmentValues.colorScheme](https://developer.apple.com/documentation/swiftui/environmentvalues/colorscheme)

🔹 `glassEffect` (NOVIDADE do iOS 18 / 26.0)  
Aplica um efeito visual de vidro nos elementos da interface como botões e campos.  
📚 [Documentação glassEffect](https://developer.apple.com/documentation/swiftui/view/glasseffect(_:in:))

🔹 `ZStack`, `VStack`  
Permitem organizar elementos verticalmente e em camadas.  
📚 [Stacks em SwiftUI](https://developer.apple.com/documentation/swiftui/stack)

---

💡 Lógica de Cálculo

O usuário digita:
- O valor pago
- O preço por litro de combustível

A função `calc()`:
1. Usa `guard let` para tentar converter os valores digitados de `String` para `Double`.
2. Se algum valor for inválido, exibe erro no console e encerra a função.
3. Realiza o cálculo:  
   `litros = valorPago / precoPorLitro`
4. Atualiza a variável `@State resultCalc` com o resultado, o que automaticamente atualiza a interface.

---

🛠️ Melhorias futuras

- Separar a lógica em um `ViewModel` usando a arquitetura MVVM.
- Adicionar ícones visuais com SF Symbols (`fuelpump.fill`, `dollarsign.circle`, etc).
- Suportar entrada de valores com vírgula (localização BR).
- Salvar histórico de abastecimentos.

---

📎 Links úteis

- [Documentação Swift](https://www.swift.org/getting-started/)
- [Documentação SwiftUI](https://developer.apple.com/documentation/swiftui/)
- [Apple Developer Pathway](https://developer.apple.com/programs/pathway/)
