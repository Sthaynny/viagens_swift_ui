//
//  ContentView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            GeometryReader{ view in
                VStack{
                    HeaderView()
                    ListaViagensView()
                    .offset(y: -30)
                }
                .edgesIgnoringSafeArea(.all)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
