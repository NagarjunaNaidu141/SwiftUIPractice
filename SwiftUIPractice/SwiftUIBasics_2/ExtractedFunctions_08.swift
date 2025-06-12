//
//  ExtractedFunctions_08.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct ExtractedFunctions_08: View {
    @State var backgroundcolor: Color = .blue
    var body: some View {
       
        ZStack{
            backgroundcolor
                .edgesIgnoringSafeArea(.all)
            contentLayer
            
        }
    }
    var contentLayer: some View {
        VStack{
            Text("Title".uppercased())
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
                
            }
        }
    func buttonPressed(){
        backgroundcolor = .yellow
    }
}


#Preview {
    ExtractedFunctions_08()
}

