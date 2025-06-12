//
//  OnAppear_04.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 15/06/25.
//

import SwiftUI

struct OnAppear_04: View {
    @State var text: String = "Start text"
    @State var count: Int = 0
    var body: some View {
        
        NavigationView{
            ScrollView{
                Text(text)
                LazyVStack{
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 150)
                            .padding()
                            .onAppear(){
                                count += 1
                            }
                        
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    text = "This is my new text"
                }
            })
            .onDisappear(perform: {
                text = "called at ending of view from screen for data clean up tasks"
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppear_04()
}
