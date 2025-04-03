//
//  ContentView.swift
//  umidade
//
//  Created by Turma01-18 on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            Text("Sensor de Umidade")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top, 40)
                .monospaced()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            ScrollView(.vertical, showsIndicators: false) {
                           if viewModel.value.isEmpty {
                             
                               ProgressView("Carregando...")
                                   .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                                   
                           } else {
                               ForEach(viewModel.value.reversed(), id: \.self) { index in
                                   HStack {
                                       Text("\(index.umidade)%")
                                           .font(.title2)
                                           .fontWeight(.semibold)
                                           .padding(.leading, 20)
                                       
                                       Spacer()
                                   }
                                   .padding()
                                   .background(Color.white)
                                   .cornerRadius(10)
                                   .shadow(radius: 5)
                                   .padding(.horizontal)
                                   .padding(.vertical, 5)
                               }
                           }
                       }

                       Spacer()
                   }
                   .padding()
                   .onAppear {
                       Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
                           viewModel.fetch()
                       }
                   }
               }
           }

           #Preview {
               ContentView()
           }
