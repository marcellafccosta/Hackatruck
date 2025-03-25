//
//  Desafio2.swift
//  Aula1
//
//  Created by Turma01-18 on 19/03/25.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
            HStack(spacing: 50){
            Image("truck")
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

            VStack{
                Text("HackaTruck")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 regiões do Brasil")
                    .foregroundStyle(.yellow)
            }
        }}
}

#Preview {
    Desafio2()
}
