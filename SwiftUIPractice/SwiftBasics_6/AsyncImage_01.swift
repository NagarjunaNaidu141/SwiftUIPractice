//
//  AsyncImage_01.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 18/06/25.
//

import SwiftUI

struct AsyncImage_01: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        ScrollView{
            //even though given frame it is not follwoing
            VStack(spacing: 100){
                Spacer()
                AsyncImage(url: url)
                    .frame(width: 100, height: 100)
                Spacer()
                AsyncImage(url: url, content: { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                }, placeholder: {
                    ProgressView()
                })
                
                AsyncImage(url: url){ phase in
                    switch phase {
                    case .empty:
                        ProfileView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                    case .failure(_):
                        Image(systemName: "questionmark.circle")
                    @unknown default:
                        Image(systemName: "person.fill")
                    }
                    
                }
            }
            
        }
       
    }
}

#Preview {
    AsyncImage_01()
}
