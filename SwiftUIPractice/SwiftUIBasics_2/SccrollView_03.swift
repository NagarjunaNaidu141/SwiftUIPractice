//
//  SccrollView_03.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 10/06/25.
//

import SwiftUI

struct SccrollView_03: View {
    let colors:[Color] = [.white,.red,.orange,.yellow,.green,.blue,.indigo,.purple,.blue,.indigo,.purple,.blue,.indigo,.purple,.white]
    var body: some View {
        
    /*    ScrollView(.horizontal){
            HStack{
                ForEach(0..<10){ index in
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(25)
                        .shadow(radius: 10)
                        .frame(width: 300, height: 300)
                        .padding()
                }
                
            }
        }
     */
        //2nd example
//        ScrollView{
//            VStack{
//                ForEach(0..<10){ index in
//                    Rectangle()
//                        .fill(Color.white)
//                        .cornerRadius(25)
//                        .shadow(radius: 10)
//                        .frame(width: 300, height: 300)
//                        .padding()
//                }
//                
//            }
//        }
        //3rd example
//        ScrollView([.horizontal, .vertical]) {
//            VStack {
//                ForEach(0..<50) { row in
//                    HStack {
//                        ForEach(0..<50) { col in
//                            Text("(\(row), \(col))")
//                                .frame(width: 80, height: 30)
//                                .border(Color.gray)
//                        }
//                    }
//                }
//            }
//        }
        
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ index in
                    ScrollView([.horizontal],showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<15){ index in
                                Rectangle()
                                    .fill(colors[index])
                                    //.fill(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 10)
                                    .frame(width: 200, height: 200)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SccrollView_03()
}
