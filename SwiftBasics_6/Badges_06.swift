//
//  Badges_06.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 18/06/25.
//

import SwiftUI

//List View
//Tab View

struct Badges_06: View {
    var body: some View {
        
        List{
            Text("Nagarjuna")
                .badge(1)
            Text("Prapul")
                .badge(2)
        }
        .foregroundColor(.black)
        TabView{
            
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                    
                }
                .badge(10)
            Color.yellow
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .badge(110)
            
            Color.orange
                .tabItem {
                    Image(systemName: "gear")
                    Text("Repair")
                }
                .badge(12)
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    Badges_06()
}
