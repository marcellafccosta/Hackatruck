//
//  CharacterView.swift
//  Desafio9
//
//  Created by Turma01-18 on 26/03/25.
//

import SwiftUI

struct CharacterView: View {
    @StateObject var p3 = ViewModel()
    @State var recebePersonagem : HarryP?
    
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
    
    
    var body: some View {
        ZStack{
            if let personagem = recebePersonagem{
                colorForHouse(house: personagem.house!)
                    .ignoresSafeArea()
                ScrollView(.vertical){
                    VStack{
                        AsyncImage(url: URL(string: recebePersonagem!.image!)){
                            image in
                            image.resizable()
                        } placeholder: {
                            AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/harrypotter/images/6/62/Sorting_Hat.png/revision/latest/scale-to-width-down/1000?cb=20161120072849")) {
                                image in
                                image.image?.resizable()
                            }
                        }
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .padding(5)
                        .shadow(radius: 10)
                        
                        if recebePersonagem?.name != ""{
                            Text(recebePersonagem!.name)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                        }
                        Spacer()
                            .padding()
                        VStack(alignment: .leading, spacing: 20){
                           
                            if recebePersonagem?.dateOfBirth != nil {
                                Text("Date of Birth: " + recebePersonagem!.dateOfBirth!)
                            }
                            
                            if recebePersonagem?.house != "" {
                                Text("House: " + recebePersonagem!.house!)
                            }
                            if recebePersonagem?.patronus != "" {
                                Text("Patronus: " + recebePersonagem!.patronus!)
                            }
                            if recebePersonagem?.gender != "" {
                                Text("Gender: " + recebePersonagem!.gender!)
                            }
                            if recebePersonagem?.species != "" {
                                Text("Species: " + recebePersonagem!.species!)}
                            
                            if recebePersonagem?.actor != ""{
                                Text("Actor: " + recebePersonagem!.actor!)
                            }
                            
                            if recebePersonagem?.alive != nil {
                                Text("Is alive? \(recebePersonagem!.alive! ? "Yes" : "No")")
                            }
                            
                            if recebePersonagem?.wizard != nil {
                                Text("Is a wizard? \(recebePersonagem!.wizard! ? "Yes" : "No")")
                            }
                        }
                        
                    }
                }
            }
        }
    }
}
#Preview {
    CharacterView()
}
