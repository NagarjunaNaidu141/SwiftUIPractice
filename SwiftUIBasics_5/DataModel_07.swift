//
//  DataModel_07.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 15/06/25.
//

import SwiftUI

struct UserModel:Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let followers: Int
    let username: String
    let isVerified: Bool
    
}

struct DataModel_07: View {
    @State var users: [UserModel] = [
        UserModel(displayName: "Nagarjuna", followers: 231, username: "nag@123", isVerified: false),
        UserModel(displayName: "Prapul", followers: 235, username: "prapul@212", isVerified: false),
        UserModel(displayName: "Prathap", followers: 450, username: "kp@211", isVerified: true),
        UserModel(displayName: "Sharmila", followers: 220, username: "sher@123", isVerified: true)
        
    ]
    var body: some View {
       
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0){
                      Circle()
                            .frame(width: 35,height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.title)
                            Text(user.username)
                                .font(.caption)
                                .foregroundColor(Color.accentColor)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followers)")
                                .font(.headline)
                                .foregroundColor(Color.orange)
                            Text("Followers")
                                .font(.caption)
                        }
                    }
                    
                }
            }
            .navigationBarTitle("Users")
        }
    }
}

#Preview {
    DataModel_07()
}
