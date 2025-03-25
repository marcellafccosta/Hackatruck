//
//  GatoView.swift
//  Aula3
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct GatoView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                Image(systemName: "cat.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            
        }}
}

#Preview {
    GatoView()
}
