//
//  ContentView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Viagens")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Black", size: 20))
            Text("Especial")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Book", size: 20))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            Text("BRASIL")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Black", size: 20))
                .padding(.leading, 30)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            List{
                Text("Rio de Janeiro")
                Text("Ceara")
                Text("Sousa")
                Text("aracaju")
            }
        }
        .background(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
