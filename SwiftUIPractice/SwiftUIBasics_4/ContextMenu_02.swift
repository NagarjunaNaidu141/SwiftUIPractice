//
//  ContextMenu_02.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 13/06/25.
//

import SwiftUI

struct ContextMenu_02: View {
    @State var backGroundColor: Color = .blue
    var body: some View {
       
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI Practice")
                .font(.headline)
            Text("Examples here")
                .font(.subheadline)
            
        }
        .foregroundColor(.white)
        .padding(20.0)
        .background(backGroundColor)
        .cornerRadius(25)
        .contextMenu(menuItems: {
            Button(action:{
                backGroundColor = .red
            },label:{
                Label("Share post",systemImage: "flame.fill")
            }
            )
            Button(action: {
                backGroundColor = .purple
            }, label: {
                Text("Report post")
            })
            Button(action: {
                backGroundColor = .orange
            }, label: {
                HStack{
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
            
        })
    }
}

#Preview {
    ContextMenu_02()
}
