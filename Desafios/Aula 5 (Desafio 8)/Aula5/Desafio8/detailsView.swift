//
//  detailsView.swift
//  Desafio8
//
//  Created by Turma01-18 on 25/03/25.
//

import SwiftUI



struct SheetView: View{
    @Environment(\.dismiss) var dismiss
    @State var locRecebe : Location =  Location(nome: "Belo Horizonte", foto: "https://www.viajenaviagem.com/wp-content/uploads/2020/02/belo-horizonte-pampulha.jpg.webp", descricao: "A verdade é que Belo Horizonte já nasceu moderna. Foi a primeira cidade brasileira planejada, na virada do século 19 para o 20. Cresceu quieta – tornou-se metrópole mantendo a imagem de clube da esquina. As montanhas que circundam a cidade guardam tesouros naturais e artísticos. Reservas ambientais, estâncias serranas e a mais bela coleção de cidades históricas do país estão a dois passos da capital.", latitude: -19.912998, longitude: -43.940933)
    
    
    var body: some View{
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: locRecebe.foto)){
                    image in
                    image.image?.resizable()
                }
                
                .frame(width: 400, height: 300)
                .padding()
                
                Text(locRecebe.nome)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                
                Text(locRecebe.descricao)
                    .padding(20)
                    .frame(width: 400)
                    .background(Color.cyan)
            }
            
        }
    }
    
}
struct detailsView: View {
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
    detailsView()
}
