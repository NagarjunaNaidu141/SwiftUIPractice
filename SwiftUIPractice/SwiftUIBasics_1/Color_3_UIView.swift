//
//  Color_3_UIView.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 09/06/25.
//

import SwiftUI

struct Color_3_UIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerRadius: 20)
        //.fill(Color.blue)
        //            .fill(
        //                Color("CustomColor")
        //                )
        //            .fill(
        //                Color.primary
        //                Color(#colorLiteral(red: 0.9254902002, green: 0.2352941176, blue: 0.1, alpha: 1))
        //                Color(UIColor.systemBlue)
        //            )
        //            .fill(
        //                LinearGradient(
        //                        gradient: Gradient(colors: [
        //                            .blue,
        //                            .red,.orange,.purple
        //                        ]),
        //                        startPoint: .leading,
        //                        endPoint: .bottom
        //                    )
        //            )
            .fill(
//                RadialGradient(
//                    gradient: Gradient(colors:[Color.blue, Color.red]),
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 100
//                )
                AngularGradient(colors: [.yellow, .red],
                                center: .center,
                                angle: .degrees(5)
            )
                )
            .frame(width: 300, height: 200)
            .shadow(color:
                        Color("CustomColor").opacity(0.9), radius: 20)
        
    }
}

#Preview {
    Color_3_UIView()
}


