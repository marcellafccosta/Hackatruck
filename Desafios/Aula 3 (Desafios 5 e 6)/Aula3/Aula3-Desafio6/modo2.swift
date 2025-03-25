//
//  modo2.swift
//  Aula3-Desafio6
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        ZStack{
            Color.verdeescuro.ignoresSafeArea()
            VStack{
                
                Text("Modo 2")
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
    }
}


struct modo2: View {
    @State private var showingSheet = false
    var body: some View {
            Button("Show Sheet") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                SheetView()
            }
        }
    }


#Preview {
    modo2()
}
