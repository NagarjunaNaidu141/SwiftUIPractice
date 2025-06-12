//
//  AppStorage_10.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 17/06/25.
//

import SwiftUI

struct AppStorage_10: View {
   // @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        VStack(spacing: 20){
            Text(currentUserName ?? "Add Name here")
            if let name = currentUserName{
                Text(name)
            }
            
            Button("Save".uppercased()){
                let name: String = "Nagarjun"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "currentUserName")
                
            }
        }
        /*
         if you are using Appstorage we no need this onAppear it automatically updates
         */
//        .onAppear(){
//            currentUserName = UserDefaults.standard.string(forKey: "currentUserName")
//        }
    }
}

#Preview {
    AppStorage_10()
}


