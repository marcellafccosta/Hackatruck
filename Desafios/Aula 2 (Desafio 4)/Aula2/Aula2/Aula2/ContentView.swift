//
//  ContentView.swift
//  Aula2
//
//  Created by Turma01-18 on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    //@State para que meu programa saiba que eu quero atualizar minha interface assim que a minha variavel qu epossui o @State mude; 
    @State private var value: Double?
    var body: some View {
        VStack {
            TextField("Enter a number", value: $value, format: .number)
                .keyboardType(.decimalPad) //quando clicar vai aparecer o teclado de numeros
                .textContentType(.oneTimeCode) //tirar correcao automatica
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
