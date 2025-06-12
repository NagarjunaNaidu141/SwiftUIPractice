//
//  TabView_01.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct TabView_01: View {
    @State var selectedTab: Int = 0
    let icons: [String] = [
        "heart.fill","globe","house.fill","person.fill"
    ]
    var body: some View {
        
        
        TabView {
            ForEach(icons, id: \.self){ icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(colors: [.red,.purple], center: .center, startRadius: 5, endRadius: 300)
        )
        .cornerRadius(20)
        .frame(height: 200)
        .padding()
        
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab){
//           
//            HomeView(selectedTab: $selectedTab)
//                .tabItem{
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browser Tab")
//                .tabItem{
//                    Image(systemName: "globe")
//                    Text("Browser")
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
    }
}

#Preview {
    TabView_01()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button(action:{
                    selectedTab = 2
                },label:{
                    Text("Go to Profile")
                        .font(.title)
                        .padding()
                        .padding(.horizontal)
                        .background(.yellow)
                        .cornerRadius(20)
                })
            }
            
           
            
        }
        
    }
}
