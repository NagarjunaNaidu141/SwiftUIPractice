//
//  Text_1_UIView.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 09/06/25.
//

import SwiftUI

struct Text_1_UIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/.uppercased())
            .font(.body)
            .fontWeight(.semibold)
            .italic()
            .strikethrough(color: Color.red)
            .underline(color: Color.blue)
        Text("hello nagarjuna, how are you whatabout your swift UI".capitalized)
            .font(.system(size: 24, weight: .black, design: .rounded))
            .multilineTextAlignment(.center)
            .foregroundStyle(.orange)
            .frame(width: 300, height: 100,alignment: .center)
    }
}

#Preview {
    Text_1_UIView()
}



