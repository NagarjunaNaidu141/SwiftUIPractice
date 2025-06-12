//
//  BackGround_7_Overlay.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 10/06/25.
//

import SwiftUI

struct BackGround_7_Overlay: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Color.red
//             LinearGradient(
//                    gradient: Gradient(colors: [.blue, .yellow]),
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
//               
//                Circle()
//                    .fill(LinearGradient(colors: [.blue, .yellow], startPoint: .bottom, endPoint: .top))
//                    .frame(width: 100,height: 100, alignment: .center)
//            )
//            .background(
//              Circle()
//                .fill(LinearGradient(gradient: Gradient(colors: [.green,.orange,.pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
//                .frame(width: 150,height: 150, alignment: .center)
//              
//                
//            )
        //2nd 0ne
//        Circle()
//            .fill(Color.red)
//            .frame(width: 200,height: 200, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//        Circle()
//            
//            .frame(width:250,height: 250,alignment: .center)
//        )
        //third example
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.red,.yellow]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                        )
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color.black, radius: 10,x:0,y:10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("10")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                            )
                            
                        ,alignment: .bottomTrailing
                        )
                    )
    }
}

#Preview {
    BackGround_7_Overlay()
}

