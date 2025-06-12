//
//  TextField_03.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 13/06/25.
//

import SwiftUI

struct TextField_03: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            VStack{
                TextField("Enter your name", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.red)
                    .cornerRadius(25)
                    .font(.headline)
                
                Button(action:{
                    if isAppropriate(){
                        saveData()
                    }
                    
                },label:{
                    Text("Save".capitalized)
                        .padding()
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(isAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(25)
                })
                .disabled(!isAppropriate())
                ForEach(dataArray, id: \.self){ data in
                    Text(data)
                }
                Spacer()
                
                
            }
            
            
            .navigationTitle("Text Field")
            .padding(.horizontal)
        }
    }
        
        func isAppropriate() -> Bool{
            if textFieldText.count >= 3 {
                return true
            }
            return false
        }
    
    func saveData(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextField_03()
}
