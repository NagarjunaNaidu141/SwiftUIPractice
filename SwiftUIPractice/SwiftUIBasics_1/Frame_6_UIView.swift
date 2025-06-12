//
//  Frame_6_UIView.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 10/06/25.
//

import SwiftUI

struct Frame_6_UIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            .frame(width: 200, height: 200, alignment: .center)
        //.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
            .background(Color.red)
            .frame(width: 250)
            .background(Color.green)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .frame(maxHeight: .infinity)
            .background(Color.accentColor)
    }
}

#Preview {
    Frame_6_UIView()
}
