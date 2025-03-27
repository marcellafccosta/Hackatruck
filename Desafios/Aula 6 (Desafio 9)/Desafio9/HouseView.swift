//
//  HouseView.swift
//  Desafio9
//
//  Created by Turma01-18 on 26/03/25.
//


import SwiftUI

struct HouseView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.red, .green, .yellow, .blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                ScrollView(.vertical){
                    VStack{
                        
                        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/d/d4/Hogwarts-Crest.png?20210328175300"),
                                   content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                        },
                                   placeholder: {
                            ProgressView()
                        }
                        ).ignoresSafeArea()
                            .frame(width: 200, height: 200)
                        
                        VStack{
                           
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HouseView()
}
