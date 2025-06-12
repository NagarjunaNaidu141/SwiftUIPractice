//
//  NavigationView_08.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 13/06/25.
//

import SwiftUI

struct NavigationView_08: View {
    var body: some View {
        
        NavigationView{
            ScrollView{
                NavigationLink("hello world",destination: SecondScreen())
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All boxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(leading:
                                    HStack {
                Image(systemName: "plus")
                Image(systemName: "person.fill")
                Image(systemName: "plus")
                Image(systemName: "plus")
            }, trailing: NavigationLink(destination: SecondScreen(),label: {
                Image(systemName: "person.fill")
            })
                .accentColor(.red)
       ) }
        
        
    }
}
struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("green screen")
               // .navigationBarHidden(true)
            VStack{
                Button("Click Heere"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Another scrreen", destination: Text("3rd screen"))
            }
        }
    }
}

#Preview {
    NavigationView_08()
}
