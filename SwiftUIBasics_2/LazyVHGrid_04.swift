//
//  LazyVHGrid_04.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 11/06/25.
//

import SwiftUI

struct LazyVHGrid_04: View {
    let column : [GridItem] = [
        GridItem(.fixed(50),spacing: 8, alignment: nil),
        GridItem(.fixed(100),spacing: 5, alignment: nil),
        GridItem(.flexible(),spacing: 7, alignment: nil)
        
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: column){
                ForEach(0..<15){ index in
                    Rectangle()
                        .fill(.white)
                        .frame(height:100)
                        .padding(5)
                        .shadow(radius: 10)
                        
                }
            }
        }
        ScrollView{
            LazyVGrid(columns: column,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                                .font(.title.bold())
                ){
                    
                    ForEach(0..<19) {index in
                        Rectangle()
                            .fill(.red)
                            .frame(height: 150)
                            
                    }
                }
                Section(header:
                            Text("Section 2")
                                .font(.title.bold())
                ){
                    
                    ForEach(0..<19) {index in
                        Rectangle()
                            .fill(.orange)
                            .shadow(radius: 5)
                            .frame(height: 150)
                            
                    }
                }
            })
            
        }
        ScrollView(.horizontal){
            LazyHGrid(rows: column,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                                .font(.title.bold())
                ){
                    
                    ForEach(0..<19) {index in
                        Rectangle()
                            .fill(.red)
                            .frame(width: 150)
                            
                    }
                }
                Section(header:
                            Text("Section 2")
                                .font(.title.bold())
                ){
                    
                    ForEach(0..<19) {index in
                        Rectangle()
                            .fill(.orange)
                            .shadow(radius: 5)
                            .frame(width: 150)
                            
                    }
                }
            })
            
        }
    }
}

#Preview {
    LazyVHGrid_04()
}
