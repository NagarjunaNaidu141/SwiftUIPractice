//
//  FocusState_07.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 18/06/25.
//

import SwiftUI

struct FocusState_07: View {
    
    enum FocusFields: Hashable{
        case username
        case password
    }
    
    //@FocusState private var usernameFocusState: Bool
    @State var name: String = ""
    //@FocusState private var passwordFocusState: Bool
    @State var password: String = ""
    
    @FocusState var fieldFocusStates: FocusFields?
    var body: some View {
       
        VStack{
            TextField("Enter Your Name", text: $name)
                .focused($fieldFocusStates, equals: .username)
                //.focused($usernameFocusState)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            SecureField("Enter Password", text: $password)
                .focused($fieldFocusStates, equals: .password)
                //.focused($usernameFocusState)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            
            Button("Sign Up"){
             
                let usernameIsValid = !name.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Sign in")
                }else if usernameIsValid{
                    fieldFocusStates = .password
                    
                }else{
                    fieldFocusStates = .username
                }
            }
                
//            Button("Toggle Focus State"){
//                usernameFocusState.toggle()
//            }
                
        
        .padding(30)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                usernameFocusState = true
//            }
     }
    }
}

#Preview {
    FocusState_07()
}
