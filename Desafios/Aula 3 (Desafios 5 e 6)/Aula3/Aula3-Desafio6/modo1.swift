//
//  modo1.swift
//  Aula3-Desafio6
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct modo1: View {
    var body: some View {
        ZStack{
            Color.verdeescuro.ignoresSafeArea()
            VStack{
                
                Text("Modo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .bold()
                
                Spacer()
                
                Text("Nome: Marcella \nSobrenome: Costa")
                .frame(width: 200, height: 100)
                .background(Color.azulmarinho)
                .foregroundColor(.white)
                .clipShape(.buttonBorder)
                .shadow(radius: 20)
                
                
                Spacer()
            }
        }
    }}

#Preview {
    modo1()
}
