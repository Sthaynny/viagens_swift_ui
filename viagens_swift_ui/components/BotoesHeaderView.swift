//
//  BotoesHeaderView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct BotoesHeaderView: View {
    
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    var _isCompact: Bool{
        return self._horizontalSizeClass == .compact
    }
    var body: some View {
        HStack{
            
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Hotéis")
                    .foregroundColor(Color.white)
                    .font(.custom("Avenir Medium", size: _isCompact ? 17: 27))
            }
            .frame(width: _isCompact ? 100:200, height: _isCompact ? 50:70)
            .background(Color.blue)
            .cornerRadius(15)
            
            Spacer()
        
            Button(action: {}) {
                Text("Pacotes")
                    .foregroundColor(Color.white)
                    .font(.custom("Avenir Medium", size: _isCompact ? 17: 27))
            }.frame(width: _isCompact ? 100:200, height: _isCompact ? 50:70)
            .background(Color.orange)
            .cornerRadius(15.0)
        
            Spacer()
        }
    }
}

struct BotoesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BotoesHeaderView()
    }
}
