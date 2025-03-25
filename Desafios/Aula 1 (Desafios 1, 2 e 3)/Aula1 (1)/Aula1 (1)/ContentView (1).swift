//
//  ContentView.swift
//  Aula1
//
//  Created by Turma01-18 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    //CRIAR VARIAVEIS SOMENTE AQUI
    // o body espera somente visualizacoes
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                
                Spacer()
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                
            }
            .padding()
            Spacer()
            HStack{
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                Spacer()
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100, height: 100)
            }
            .padding()
        }
    }}

//somente chamar a tela ao lado
#Preview {
    ContentView()
}

//VStack vertical stack, colcoar texto embaixo do outro
//HStack horizontal stack, colocar lado a lado
// eles agrupam e organniizam nossas views de acordo com sua orientacao

//Spacer sao espacadores para facilitar a organizacao
