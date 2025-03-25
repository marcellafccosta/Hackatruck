//
//  ContentView.swift
//  Aula3
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            
            VStack {
                TabView {
                    Group{
                        CoelhoView()
                            .tabItem {
                                Image(systemName: "hare.fill")
                                Text("Coelho")
                            }
                        
                        
                        GatoView()
                            .tabItem {
                                Image(systemName: "cat.fill")
                                Text("Gato")
                                
                            }
                        
                        CachorroView()
                            .tabItem {
                                Image(systemName: "dog.fill")
                                Text("Cachorro")
                            }
                        
                        ListaView()
                            .tabItem {
                                Image(systemName: "list.bullet" )
                                Text("Lista")
                            }
                    }
                    .toolbarBackground(.white, for: .tabBar)
                    .toolbarBackground(.visible, for: .tabBar)
                }
                
                .accentColor(.black)
                
                
            }
        
    }
}

#Preview {
    ContentView()
}
