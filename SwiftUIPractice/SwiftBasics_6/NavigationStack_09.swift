//
//  NavigationStack_09.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 19/06/25.
//

import SwiftUI

struct NavigationStack_09: View {
    let fruits = ["Mango","Banana","Pineapple","Apple","Orange"]
    @State var stackPath: [String] = []
    var body: some View {
        //here we are giving Stackpath as stirng and only allows destination for strings. and we can append multiple screens at same time.
        NavigationStack(path: $stackPath){
            ScrollView{
                
                Button("Super Seuge"){
                    stackPath.append(contentsOf: [
                        "grape","coconut","mango"
                    ])
                }
                ForEach(fruits,id: \.self){ fruit in
                    NavigationLink(value: fruit, label: {
                        Text(fruit)
                    })
                }
                ForEach(0..<10){ x in
                
                    VStack(spacing: 30){
                        NavigationLink(value: x){
                            Text("Clicke me \(x)")
                        }
                        .padding()
                    }
                    
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self) { value in
                SecondNavigation(value: value)
            }
            .navigationDestination(for: String.self) { value in
               Text("Anpther screeen \(value)")
            }
        }
    }
}
struct SecondNavigation: View{
    let value: Int
    init(value: Int) {
        self.value = value
        print("INit screen: \(value)")
    }
    var body: some View{
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStack_09()
}
