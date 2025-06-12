//
//  DarkMode_02.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct DarkMode_02: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This is primary text")
                        .foregroundColor(.primary)
                    Text("This is Secondary text")
                        .foregroundColor(.secondary)
                    Text("This is black text")
                        .foregroundColor(.black)
                    Text("This is white text")
                        .foregroundColor(.white)
                    Text("This is Red text")
                        .foregroundColor(.red)
                    Text("This is adaptive color")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("this color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .orange : .yellow)
                }
            }
            .navigationTitle(Text("Dark Mode"))
        }
    }
}

#Preview {
        DarkMode_02()
            .preferredColorScheme(.dark)
}
