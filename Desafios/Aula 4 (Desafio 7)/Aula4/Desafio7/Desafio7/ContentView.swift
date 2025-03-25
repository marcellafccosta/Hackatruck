//
//  ContentView.swift
//  Desafio7
//
//  Created by Turma01-18 on 24/03/25.
//

import SwiftUI

struct Song : Hashable {
    var name : String
    var artist : String
    var capa : String
}

var songs = [
    Song(name: "15 Minutes", artist: "Sabrina Carpenter", capa: "https://upload.wikimedia.org/wikipedia/pt/0/07/Short_n%27_Sweet.png"),
    Song(name: "That's So True", artist: "Gracie Abrams", capa: "https://static.wikia.nocookie.net/gracieabrams/images/4/4b/The_Secret_Of_Us_Deluxe_Cover.jpeg/revision/latest/scale-to-width-down/1000?cb=20241207064743"),
    Song(name: "Busy Woman", artist: "Sabrina Carpenter", capa: "https://upload.wikimedia.org/wikipedia/pt/0/07/Short_n%27_Sweet.png"),
    Song(name: "Tough Love", artist: "Gracie Abrams", capa: "https://static.wikia.nocookie.net/gracieabrams/images/4/4b/The_Secret_Of_Us_Deluxe_Cover.jpeg/revision/latest/scale-to-width-down/1000?cb=20241207064743"),
]

struct ContentView: View {
    
    
    var body: some View {
        NavigationStack{
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                    ScrollView(.vertical) {
                    VStack {
                        AsyncImage(url: URL(string: "https://portais.univasf.edu.br/imagens-noticias/WhatsAppImage20240910at17.01.29.jpeg")) {
                            image in
                            image.image?.resizable()
                        }
                        
                        .frame(width: 200, height: 200)
                        
                        VStack(alignment: .leading){
                            Text("HackaFM")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                                .foregroundStyle(.white)
                            
                            HStack{
                                AsyncImage(url: URL(string: "https://portais.univasf.edu.br/imagens-noticias/WhatsAppImage20240910at17.01.29.jpeg")) {
                                    image in
                                    image.image?.resizable()
                                }
                                .frame(width: 20, height: 20)
                                
                                Text("HackaSong")
                                    .foregroundStyle(.white)
                                
                            }
                        }
                        
                        
                        VStack{
                            ForEach(songs, id: \.self) { e in
                                
                                HStack{
                                    NavigationLink(destination: playingView(musicaRecebe: e)) {
                                        
                                        AsyncImage(url: URL(string: e.capa)){
                                            image in
                                            image.image?.resizable()
                                        }
                                        
                                        .frame(width: 50, height: 50)
                                        
                                        VStack (alignment: .leading){
                                            Text(e.name)
                                                .font(.headline)
                                                .foregroundStyle(.white)
                                            Text(e.artist)
                                                .font(.subheadline)
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .padding()
                                        .foregroundStyle(.white)
                                    
                                }
                                
                            }
                        }
                        .padding()
                        VStack(alignment: .leading){
                            Text("Sugeridos")
                                .foregroundStyle(.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(songs, id: \.self)  { e in
                                        AsyncImage(url: URL(string: e.capa)){
                                            image in
                                            image.image?.resizable()
                                        }
                                        .frame(width: 200, height: 200)
                                    }
                                }
                            }
                        }}
                    
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
