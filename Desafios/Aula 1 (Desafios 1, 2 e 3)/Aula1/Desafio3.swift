//
//  Desafio3.swift
//  Aula1
//
//  Created by Turma01-18 on 19/03/25.
//

import SwiftUI

struct Desafio3: View {
    @State private var nome: String = ""
    @State private var mostrarAlerta = false
    var body: some View {
        ZStack{
            
            Image("truck")
                .resizable()
                .scaledToFill()
                .opacity(0.5)
                .ignoresSafeArea()
            
            
            VStack{
                Text("Bem vindo \(nome)!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("Digite seu nome", text: $nome)
                Spacer()
                Image("logohacka")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 150)
                Spacer()
                Button("Entrar") {
                    mostrarAlerta = true
                }.alert(isPresented:$mostrarAlerta){
                    Alert(
                        title: Text("ALERTA!"),
                        message: Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá!"))
                    )
                }}
            
            .multilineTextAlignment(.center)
            
            
            
           
                
                
            
        }
    }}

#Preview {
    Desafio3()
}
