import SwiftUI

struct HouseVieww: View {
    @StateObject var p2 = ViewModel()
    @State var recebeCasa: String = "gryffindor"

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
        ZStack {
            colorForHouse(house: recebeCasa)
                .ignoresSafeArea()
            
            NavigationStack {
                ScrollView(.vertical) {
                    AsyncImage(url: URL(string: imageForHouse(house: recebeCasa))) { image in
                        image.image?
                            .resizable()
                            .scaledToFill()
                    }
                    .frame(width: 200, height: 200)
                    .clipped()

                    VStack(alignment: .leading) {
                        ForEach(p2.personagens, id: \.self) { index in
                            HStack {
                                NavigationLink(destination: CharacterView(recebePersonagem: index)) {
                                    AsyncImage(url: URL(string: index.image!)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/harrypotter/images/6/62/Sorting_Hat.png/revision/latest/scale-to-width-down/1000?cb=20161120072849")) {
                                            image in
                                            image.image?.resizable()
                                        }
                                            
                                    }
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                    .padding(5)
                                    .shadow(radius: 10)
                                    

                                    
                                    Text(index.name)
                                        .foregroundStyle(.black)
                                        .bold()
                                    
                                }
                            }
                        }
                    }
                }
                .onAppear {
                    p2.fetchCasa(house: recebeCasa)
                }
            }
        }
    }
}

#Preview {
    HouseVieww()
}
