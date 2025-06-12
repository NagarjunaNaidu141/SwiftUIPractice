//
//  IfLetGuard_05.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 15/06/25.
//

import SwiftUI

struct IfLetGuard_05: View {
    @State var currentUserId: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        
        NavigationView{
            VStack{
               Text("we are doing safe coding")
                
                if let data = displayText{
                    Text(data)
                        .font(.title)
                 
                }
                if isLoading{
                    ProgressView()
                }
                //force unwrapping an optional value may crash the app if optional value is nil
                // DO NOT USE EVER!
                // WARNING: DO NOT FORCE UNWRAP VALUES
//                Text(displayText!)
//                    .font(.title)
                Spacer()
                
            }
           
            .navigationTitle("If Let Guard")
            .onAppear(){
                //loadData()
                loadData2()
            }
        }
    }
    func loadData(){
        if let userId = currentUserId{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                displayText = "This is new text. user id is \(userId)"
                isLoading = false
            }
        }else{
            displayText = "Error there is no user id"
        }
    }
    func loadData2(){
        guard let userId = currentUserId else {
            displayText = "Error there is no user id guard"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            displayText = "This is new text. user id of guard is \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuard_05()
}
