//
//  ExtractedSubView_09.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct ExtractedSubView_09: View {
    var body: some View {
        ZStack{
            Color(.purple).ignoresSafeArea()
            
            contentsubView
        }
    }
    var contentsubView: some View{
        ScrollView(.horizontal){
            HStack {
                MyItems(title: "Oranes", count: 12, color: .orange)
                MyItems(title: "Apple", count: 1, color: .red)
                MyItems(title: "Mangoes", count: 20, color: .yellow)
                MyItems(title: "Oranes", count: 12, color: .orange)
                MyItems(title: "Apple", count: 1, color: .red)
                MyItems(title: "Mangoes", count: 20, color: .yellow)
            }
        }
    }
}

#Preview {
    ExtractedSubView_09()
}

struct MyItems: View {
    let title: String
    let count: Int
    let color: Color
    var body: some View {
        
        VStack(spacing: 10){
            Text("\(count)")
            Text(title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(20)
    }
}


