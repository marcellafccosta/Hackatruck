//
//  modo3.swift
//  Aula3-Desafio6
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct modo3: View {
    var body: some View {
        ZStack{
            Color.verdeescuro.ignoresSafeArea()
            VStack{
                
                Text("Modo 3")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .bold()
                
                Spacer()
                
                ZStack{
                    VStack{
                        Text("Olá!")
                            .padding()
                        Text("Bem vinda, Marcella")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding()
                        Button(action: {}, label: {
                            NavigationLink(destination: modo3_2()) {
                                Text("Acessar tela")
                                    .foregroundStyle(.azulmarinho)
                            }})
                        .buttonStyle(.borderedProminent)
                        .tint(.white)
                        .foregroundColor(.azulmarinho)
                        .shadow(radius: 20)
                        .padding()
                    }
                    }
                .frame(width: 300, height: 200)
                .background(Color.azulmarinho)
                .foregroundColor(.white)
                .clipShape(.buttonBorder)
                .shadow(radius: 20)
                
                
                
                Spacer()
            }
        }

    }
}

#Preview {
    modo3()
}
