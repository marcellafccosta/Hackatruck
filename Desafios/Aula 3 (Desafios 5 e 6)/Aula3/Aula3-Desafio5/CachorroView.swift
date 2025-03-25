//
//  CachorroView.swift
//  Aula3
//
//  Created by Turma01-18 on 21/03/25.
//

import SwiftUI

struct CachorroView: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            VStack{
                Image(systemName: "dog.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            
        }
    }}

#Preview {
    CachorroView()
}
