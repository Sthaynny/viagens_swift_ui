//
//  BotoesHeaderView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct BotoesHeaderView: View {
    var body: some View {
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Hotéis")
                    .foregroundColor(Color.white)
                    .font(.custom("Avenir Medium", size: 17))
            }
            .frame(width: 100, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .offset(x: 60)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Pacotes")
                    .foregroundColor(Color.white)
                    .font(.custom("Avenir Medium", size: 17))
            }.frame(width: 100, height: 50)
            .background(Color.orange)
            .cornerRadius(15.0)
            .offset(x: -60)
        }
    }
}

struct BotoesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BotoesHeaderView()
    }
}
