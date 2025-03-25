//
//  ContentView.swift
//  Aula3-Desafio6
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.verdeescuro.ignoresSafeArea()
                VStack {
                    Image("logo-topo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: modo1()) {
                            Text("Modo 1")
                                .foregroundStyle(.white)
                        }})
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .tint(.azulmarinho)
                    .shadow(radius: 20)
                    
            
                
                    Button("Modo 2") {
                        showingSheet.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .tint(.azulmarinho)
                    .sheet(isPresented: $showingSheet) {
                        SheetView()
                    }
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: modo3()) {
                            Text("Modo 3")
                                .foregroundStyle(.white)
                        }})
                        .buttonStyle(.borderedProminent)
                            .controlSize(.large)
                            .tint(.azulmarinho)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
