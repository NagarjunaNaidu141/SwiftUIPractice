//
//  TextSelection_03.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 18/06/25.
//

import SwiftUI

struct TextSelection_03: View {
    var body: some View {
        VStack{
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .textSelection(.enabled)
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .textSelection(.disabled)
            Spacer()
        }
        
    }
}

#Preview {
    TextSelection_03()
}
