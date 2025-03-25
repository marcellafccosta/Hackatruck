//
//  playingView.swift
//  Desafio7
//
//  Created by Turma01-18 on 24/03/25.
//

import SwiftUI

struct playingView: View {
    @State var musicaRecebe : Song = Song(name: "15 Minutes", artist: "Sabrina Carpenter", capa: "https://upload.wikimedia.org/wikipedia/pt/0/07/Short_n%27_Sweet.png")
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                
                
                
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: musicaRecebe.capa)){
                        image in
                        image.image?.resizable()
                    }
                    
                    .frame(width: 200, height: 200)
                    .padding()
                    
                        Text(musicaRecebe.name)
                            .font(.headline)
                            .foregroundStyle(.white)
                        Text(musicaRecebe.artist)
                            .font(.subheadline)
                            .foregroundStyle(.white)
                    
                    Spacer()
                    HStack{
                        Image(systemName: "shuffle")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        Image(systemName: "backward.end.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        Image(systemName: "play.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        Image(systemName: "forward.end.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        Image(systemName: "repeat")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        
                    }
                    
                    Spacer()
                    }
                
            }
        }
    }
}
#Preview {
    playingView()
}
