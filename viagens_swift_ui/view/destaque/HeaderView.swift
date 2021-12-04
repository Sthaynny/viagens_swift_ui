//
//  HeaderView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    var _isCompact: Bool{
        return self._horizontalSizeClass == .compact
    }
    var body: some View {
        GeometryReader{ view in
            VStack{
                VStack{
                    Text("Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: _isCompact ? 26: 36))
                        .padding(.top, _isCompact ? 50: 90)
                    Text("Especial")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: _isCompact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: _isCompact ? 20 : 30))
                        .padding(.leading, 30)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                }
                .frame(width: view.size.width, height: _isCompact ? 180 : 250, alignment: .top)
                .background(Color.purple)
                
                BotoesHeaderView()
                .offset(y: -30)
            }
            
        }
        
    }
}


struct HeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group{
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 900 , height: 310))
        }
    }
}


