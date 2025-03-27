//
//  ContentView.swift
//  Desafio9
//
//  Created by Turma01-18 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var house3 = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
    @State var house2 = ""
    
    func colorForHouse(house: String) -> Color {
        switch house {
        case "Gryffindor":
            return .red
        case "Hufflepuff":
            return .yellow
        case "Ravenclaw":
            return .blue
        case "Slytherin":
            return .green
        default:
            return .gray
        }
    }
    
    func imageForHouse(house: String) -> String {
        switch house {
        case "Gryffindor":
            return "https://1000logos.net/wp-content/uploads/2021/11/Gryffindor-Logo-1536x864.png"
        case "Hufflepuff":
            return "https://1000logos.net/wp-content/uploads/2023/08/Hufflepuff-Logo-1536x864.png"
        case "Ravenclaw":
            return "https://1000logos.net/wp-content/uploads/2023/05/Ravenclaw-Logo-1536x864.png"
        case "Slytherin":
            return "https://1000logos.net/wp-content/uploads/2023/05/Slytherin-Logo-1536x864.png"
        default:
            return "https://upload.wikimedia.org/wikipedia/commons/d/d4/Hogwarts-Crest.png?20210328175300"
        }
    }
    
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
                            .padding(50)
                        
                        
                        VStack(alignment: .leading){
                            ForEach(house3, id: \.self){ house in
                                
                            
                                
                                NavigationLink(destination:
                                                HouseVieww(recebeCasa: house)){
                                    HStack {
                                        AsyncImage(url: URL(string: imageForHouse(house: house))) { image in
                                            image.image?
                                                .resizable()
                                                .scaledToFill()
                                        }
                                        .frame(width: 80, height: 80)
                                        Text(house)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                            .padding()
                                            
                                    }
                                    .frame(width: 230, height: 100)
                                    .background(colorForHouse(house: house))
                                    .clipShape(RoundedRectangle(cornerRadius: 6))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
