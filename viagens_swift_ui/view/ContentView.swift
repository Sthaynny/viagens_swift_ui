//
//  ContentView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    var _isCompact: Bool{
        return self._horizontalSizeClass == .compact
    }
    var body: some View {
        TabView {
            DestaqueView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
                }

            ListaDePacotesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
