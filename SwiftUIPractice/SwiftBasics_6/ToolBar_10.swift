//
//  ToolBar_10.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 19/06/25.
//

import SwiftUI

struct ToolBar_10: View {
    
    @State var text: String = ""
    @State private var stackItem: [String] = []
    
    var body: some View {
       
        NavigationStack(path: $stackItem){
            
            ZStack{
                Color.orange.opacity(0.5).ignoresSafeArea()
                TextField("placeHoder", text: $text)
                ScrollView{
                    ForEach(0..<50){ _ in
                        
                        Rectangle()
                            .frame(width: 200, height: 200)
                    }
                }
                
               // Text(text)
                
            }
            .navigationTitle("Tool bar")
            .toolbar{
                ToolbarItem(placement: .destructiveAction, content: {
                    Image(systemName: "heart.fill")
                })
                
                ToolbarItem(placement: .keyboard, content: {
                    Image(systemName: "heart.fill")
                })
                
                ToolbarItem(placement: .navigationBarLeading, content: {
                    HStack{
                        Image(systemName: "heart.fill")
                        Image(systemName: "gear")
                    }
                    
                })
            }
            //.navigationBarHidden(true)
            //.toolbarBackground(.hidden, for: .navigationBar)
           // .toolbar(.hidden, for: .navigationBar)
           // .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu(content: {
                Button("Screen1 "){
                    stackItem.append("Screen 1")
                }
                Button("Screen 2 "){
                    stackItem.append("Screen 2")
                }
                Button("Screen 3 "){
                    stackItem.append("Screen 3")
                }
            })
            .navigationDestination(for: String.self){ value in
            Text("New screen \(value)")
            }
        }
    }
}

#Preview {
    ToolBar_10()
}
