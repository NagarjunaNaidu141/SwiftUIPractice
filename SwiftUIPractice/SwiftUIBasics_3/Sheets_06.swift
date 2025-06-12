//
//  Sheets_06.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct Sheets_06: View {
    @State var showSheet: Bool = true
    var body: some View {
        
        ZStack{
            Color.yellow.ignoresSafeArea()
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Show Sheet")
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(25))
                  
                    
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                secondSheet()
            })
//            .sheet(isPresented: $showSheet, content: {
//                secondSheet()
//            })


        }
    }
}
struct secondSheet: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action:{
                presentationMode.wrappedValue.dismiss()
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
    Sheets_06()
}
