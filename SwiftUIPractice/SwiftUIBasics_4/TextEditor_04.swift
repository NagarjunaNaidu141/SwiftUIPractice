//
//  TextEditor_04.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 13/06/25.
//

import SwiftUI

struct TextEditor_04: View {
    @State var textEditorText: String = "This is default text"
    @State var savedText: String = ""
    var body: some View {
        
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                    .cornerRadius(25)
                Button(action:{
                    savedText = textEditorText
                        
                },label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue).cornerRadius(25)
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            //.background(.green)
            .navigationTitle("Text Editor")
            
            
        }
    
    }
}

#Preview {
    TextEditor_04()
}
