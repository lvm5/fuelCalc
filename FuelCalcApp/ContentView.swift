//
//  ContentView.swift
//  FuelCalc
//
//  Created by Leandro Morais on 2025-07-15.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var bombPrice: String = ""
    @State private var pricePaid: String = ""
    @State private var fuel: FuelType = .gasoline
    @State private var resultCalc: Double = 0.0
    @State private var selectedPickerDefault: FuelType = .gasoline
//    let result: Double = Double(resultCalc)
    
    func calc() {
        // Tenta converter a String para Double
        guard let doubleBombPrice = Double(bombPrice) else {
            print("❌ Erro valor")
            return // Para tudo se valor for inválida
        }
        // Tenta converter a String para Double
        guard let doublePricePaid = Double(pricePaid) else {
            print("❌ Erro valor")
            return // Para tudo se valor for inválida
        }
        // Calcula
        let resultFinal: Double = doublePricePaid / doubleBombPrice
        
        // Atualiza na tela
        resultCalc = resultFinal
    }
    
    
    // enum para limitar entradas
    enum FuelType: String, CaseIterable, Identifiable {
        case gasoline = "gasolina"
        case ethanol = "etanol"
        case diesel = "diesel"
        // criar variável para deixar picker com valor inicial
        var id: String { self.rawValue }
    }
    
    
    var body: some View {
        
        ZStack {
            // Fundo com gradiente que muda conforme o modo claro/escuro
            LinearGradient(
                colors: colorScheme == .dark
                ? [
                    Color(red: 0.12, green: 0.16, blue: 0.20).opacity(0.6), // Grafite suave
                    Color(red: 0.07, green: 0.32, blue: 0.27).opacity(0.4)  // Verde petróleo
                ]
                : [
                    Color(red: 0.87, green: 0.95, blue: 0.91).opacity(0.9), // Verde claro
                    Color(red: 0.54, green: 0.78, blue: 0.90).opacity(0.85), // Azul leve
                    Color(red: 1.00, green: 0.83, blue: 0.55).opacity(0.9)   // Amarelo suave
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea() // Faz o fundo ocupar toda a tela

            
            VStack {
                
                Text("Quantos litros abasteceu hoje...")
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    .bold()
                
                
                Picker("Combustível abastecido", selection: $selectedPickerDefault) {
                    ForEach(FuelType.allCases) { fuelType in
                        Text(fuelType.rawValue.capitalized)
                            .tag(fuelType)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                
                TextField("Valor do combustível", text: $bombPrice)
                    .keyboardType(.decimalPad)
                    .multilineTextAlignment(.center)
                    .font(.default)
                    .bold()
                    .padding(.vertical, 25)
                    .glassEffect(.regular, in: RoundedRectangle(cornerRadius: 16))
                
                
                TextField("Valor que pagou", text: $pricePaid)
                    .keyboardType(.decimalPad)
                    .multilineTextAlignment(.center)
                    .font(.default)
                    .bold()
                    .padding(.vertical, 25)
                    .glassEffect(.regular, in: RoundedRectangle(cornerRadius: 16))
                
                Spacer()
                
                    Text("Você abasteceu \(String(format: "%.2f", resultCalc)) litros de \(selectedPickerDefault.rawValue)")
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .bold()
//                }
                
                Spacer()
                
                Button("Calcular") {
                    calc()
                }
                .disabled(pricePaid.isEmpty)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 250, height: 60)
                .padding()
                .glassEffect(.regular.tint(.green).interactive())
                
            }
            .padding()
            //.navigationTitle("Quantos litros?")
            .foregroundColor(colorScheme == .dark ? .white.opacity(0.8) : .black)
            
        }
    }
}

#Preview {
    ContentView()
}
