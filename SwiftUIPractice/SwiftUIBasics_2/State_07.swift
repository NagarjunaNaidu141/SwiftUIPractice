//
//  State_07.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct State_07: View {
    @State var backGroundColor: Color = .blue
    @State var title: String = "My title"
    @State var count: Int = 0
    var body: some View {
        
        ZStack{
            backGroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Text(title)
                    .font(.largeTitle)
                Text("Count : \(count)")
                    .underline()
                    .font(.title)
                HStack(spacing: 20) {
                    Button("Button 1"){
                        backGroundColor = .red
                        title = "Button 1 clicked"
                        count += 1
                    }
                    Button("Button 2"){
                        backGroundColor = .green
                        title = "Button 2 clicked"
                        count -= 1
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    State_07()
}

