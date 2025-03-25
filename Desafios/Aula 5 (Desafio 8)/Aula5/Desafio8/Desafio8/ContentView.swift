//
//  ContentView.swift
//  Desafio8
//
//  Created by Turma01-18 on 25/03/25.
//

import SwiftUI
import MapKit

struct Location: Hashable {
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}

struct ContentView: View {
    

    @State var localizacoes = [
        Location(nome: "Belo Horizonte", foto: "https://www.viajenaviagem.com/wp-content/uploads/2020/02/belo-horizonte-pampulha.jpg.webp", descricao: "A verdade é que Belo Horizonte já nasceu moderna. Foi a primeira cidade brasileira planejada, na virada do século 19 para o 20. Cresceu quieta – tornou-se metrópole mantendo a imagem de clube da esquina. As montanhas que circundam a cidade guardam tesouros naturais e artísticos. Reservas ambientais, estâncias serranas e a mais bela coleção de cidades históricas do país estão a dois passos da capital.", latitude: -19.912998, longitude: -43.940933),
        Location(nome: "Rio de Janeiro", foto: "https://blog.paineirascorcovado.com.br/wp-content/uploads/2024/11/Cristo-Redentor-Por-do-sol-1536x1024.jpg", descricao: "O Rio de Janeiro é uma grande cidade brasileira à beira-mar, famosa pelas praias de Copacabana e Ipanema, pela estátua de 38 metros de altura do Cristo Redentor, no topo do Corcovado, e pelo Pão de Açúcar, um pico de granito com teleféricos até seu cume. A cidade também é conhecida pelas grandes favelas. O empolgante Carnaval, com carros alegóricos, fantasias extravagantes e sambistas, é considerado o maior do mundo.", latitude: -22.9035, longitude: -43.2096),
        Location(nome: "Sete Lagoas", foto: "https://upload.wikimedia.org/wikipedia/commons/0/0e/Sete_Lagoas_30.05.2022.jpg", descricao: "Sete Lagoas é um município brasileiro do estado de Minas Gerais, localizado a aproximadamente 72 quilômetros de Belo Horizonte. ", latitude: -19.4679, longitude: -44.2477),
        Location(nome: "Toronto", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/CC_2022-06-18_193-Pano_%28cropped%29_01.jpg/1200px-CC_2022-06-18_193-Pano_%28cropped%29_01.jpg", descricao: "Toronto é a maior cidade do Canadá, com uma economia diversificada e uma rica cena cultural. É um centro financeiro e comercial do país e uma das principais portas de entrada para quem visita o Canadá.", latitude: 43.7001100, longitude: -79.4163000),
    ]
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -10, longitude: -55),
            span: MKCoordinateSpan(latitudeDelta: 80, longitudeDelta: 80)))
    
    
    @State var selectLoc: Location = Location(nome: "", foto: "", descricao: "", latitude: 0, longitude: 0)
    
    @State private var showingSheet = false

    
    var body: some View {
        ZStack(alignment: .top) {
            
            VStack {
                
                Map(position: $position){
                    
                    ForEach(localizacoes, id: \.self) {
                        e in
                        Annotation(e.nome, coordinate: CLLocationCoordinate2D(latitude: e.latitude, longitude: e.longitude)){
                            
                            HStack{
                                Button{
                                    showingSheet.toggle()
                                    selectLoc = e
                                }
                            label: {
                                Image(systemName: "mappin.circle.fill")
                                    .font(.system(size: 30, weight: .thin))
                                
                            }
                            .sheet(isPresented: $showingSheet) {
                                SheetView(locRecebe: selectLoc)
                            }
                                
                            }}
                    }
                }
            }
                
                Picker("Localizações", selection: $selectLoc) {
                    ForEach(localizacoes, id: \.self) { e in
                        Text("\(e.nome)")
                        
                        
                        
                    }
                    
                }
                
                .frame(width: 200, height: 50)
                .background()
                .cornerRadius(10)
                .padding()
                .shadow(color: .black.opacity(0.3), radius: 10)
                .tint(.black)
                .onChange(of: selectLoc){
                    position =  MapCameraPosition.region(
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: selectLoc.latitude, longitude: selectLoc.longitude),
                            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)))
                }
               
            
        }}
}


            
            
            

#Preview {
    ContentView()
}
