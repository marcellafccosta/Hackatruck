//
//  ListaView.swift
//  Aula3
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        VStack{
            NavigationView{
                List {
                    HStack{
                        Text("Coelhinho")
                        Spacer()
                        Image(systemName: "hare.fill")
                    }
                    HStack{
                        Text("Gatinho")
                        Spacer()
                        Image(systemName: "cat.fill")
                        
                    }
                    HStack{
                        Text("Cachorrinho")
                        Spacer()
                        Image(systemName: "dog.fill")
                        
                    }
                }
                .navigationTitle("Animais")
                .navigationBarTitleDisplayMode(.inline)
                
            }
            
        }
        
    }
}

#Preview {
    ListaView()
}
