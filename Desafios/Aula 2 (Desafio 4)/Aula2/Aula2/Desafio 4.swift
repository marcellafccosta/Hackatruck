//
//  Desafio 4.swift
//  Aula2
//
//  Created by Turma01-18 on 20/03/25.
//

import SwiftUI


struct Desafio_4: View {
    @State private var distancia: Double = 0.0
    @State private var tempo: Double = 0.0
    @State private var resultado: Double = 0.0
    @State private var animal: String = "interrogacao"
    @State private var cor: Color = Color.gray.opacity(0.2)
    
    var body: some View {
        ZStack{
            Color(cor).ignoresSafeArea()
            VStack{
                Text("Digite a distância (km):")
                
                TextField("0", value: $distancia, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
                
                
                Text("Digite o tempo (h):")
                TextField("0", value: $tempo, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
                
                Button("Calcular"){
                    calcular(distancia: distancia, tempo: tempo)
                }.buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .padding()
                    .tint(.azulmarinho)
                    
        
                Text("\(resultado, specifier: "%.2f") km/h")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                
                Image(animal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 300)
                
            }
            .padding(50)
            .multilineTextAlignment(.center)
            
            
        }
    }
    
    func calcular(distancia: Double, tempo: Double){
        resultado = distancia / tempo
        switch resultado {
        case 0...9.9:
            print("\(resultado) km/h")
            animal = "tartaruga"
            print(animal)
            cor = Color.verde
            print(cor)
            
            break
            
        case 10...29.9:
            print("\(resultado) km/h")
            animal = "elefante"
            print(animal)
            cor = Color.azul
            break
        
        case 30...69.9:
            print("\(resultado) km/h")
            print(animal)
            animal = "avestruz"
            cor = Color.laranja
            break
            
        case 70...89.9:
            print("\(resultado) km/h")
            print(animal)
            animal = "leao"
            cor = Color.amarelo
            break
        
        case 90...130:
            print("\(resultado) km/h")
            print(animal)
            animal = "guepardo"
            cor = Color.vermelho
            break
            
        default:
            print("Valor inválido.")
        }
        
    }

}

#Preview {
    Desafio_4()
}
