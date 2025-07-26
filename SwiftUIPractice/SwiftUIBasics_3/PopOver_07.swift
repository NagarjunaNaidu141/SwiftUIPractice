//
//  PopOver_07.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct PopOver_07: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Text("Show Sheet")
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(25))
                  
                    
            })
//            .fullScreenCover(isPresented: showNewScreen, content: {
//                showNewScreen()
//            })
            //Method -1 using Sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                SwiftUIPractice.showNewScreen()
//            })
            
            //method - 2 Transition
//            ZStack{
//                if showNewScreen {
//                    newScreen(showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//method 3 animation offset
            newScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())

        }
    }
}
struct newScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action:{
            presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
                
            }) {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    PopOver_07()
}
