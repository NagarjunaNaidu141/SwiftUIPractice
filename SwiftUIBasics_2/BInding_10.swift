//
//  BInding_10.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct BInding_10: View {
    @State var backGroundColor : Color = .blue
    @State var title: String = "Title"
    var body: some View {
        
        ZStack{
            backGroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                ButtonView(backGroundColor: $backGroundColor, title: $title)
            }
        }
    }
}

struct ButtonView :View{
    @Binding var backGroundColor : Color
    @State var buttonColor: Color = .pink
    @Binding var title: String
    var body: some View{
        Button(action: {
            backGroundColor = Color.red
            buttonColor = Color.orange
            title = "Title changed from subclass"
        }, label: {
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
        })

    }
}
#Preview {
    BInding_10()
}
