//
//  HVZStack_8.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 10/06/25.
//

import SwiftUI

struct HVZStack_8: View {
    var body: some View {
        
//        VStack(alignment: .center, spacing: 2){
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        }
//        HStack(alignment: .center, spacing: 2){
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        }
//        ZStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//        }
        //second
//        ZStack(alignment: .top){
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 350, height: 500)
//            VStack(alignment: .leading, spacing: 20) {
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.white)
//                        .frame(width: 50, height: 10)
//                    Circle()
//                        .fill(Color.blue)
//                        .frame(width: 50)
//                }
//                .background(.purple)
//            }
//            .background(.black)
//        }
        //third
        VStack(alignment: .center,spacing: 70){
            ZStack{
                Circle()
                    .fill(Color.red)
                    .frame(width: 150,height:150)
                    Text("10")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Text("10")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(.red)
                        .frame(width: 150,height:150)
                    )
        }
    }
}

#Preview {
    HVZStack_8()
}
