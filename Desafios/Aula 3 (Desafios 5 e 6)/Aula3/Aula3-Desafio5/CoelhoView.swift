//
//  CoelhoView.swift
//  Aula3
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct CoelhoView: View {
    var body: some View {
        ZStack{
            Color.pink.ignoresSafeArea()
            VStack(){
                Image(systemName: "hare.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            
        }
        
    }
        
}

#Preview {
    CoelhoView()
}
