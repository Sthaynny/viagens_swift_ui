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
            GeometryReader{ view in
                VStack{
                    Text("Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 26))
                        .padding(.top, 50)
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
                    
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                .edgesIgnoringSafeArea(.all)
            }
            List{
                Text("Rio de Janeiro")
                Text("Ceara")
                Text("Sousa")
                Text("aracaju")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
