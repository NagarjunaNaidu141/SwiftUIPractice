//
//  ListSwipeActions_05.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 18/06/25.
//

import SwiftUI

struct ListSwipeActions_05: View {
    @State var fruits: [String] = ["Apples", "Bananas", "Oranges", "Mangoes"]
    var body: some View {
        
        List{
            ForEach(fruits, id: \.self){ fruit in
                Text(fruit.uppercased())
                    .swipeActions(edge: .trailing,
                        allowsFullSwipe: true){
                        Button("Delete") {
                            self.fruits.removeAll(where: { $0 == fruit })
                        }
                        .tint(.red)
                        Button("Archive"){
                            
                        }
                        .tint(.yellow)
                        Button("Save"){
                            
                        }
                        .tint(.orange)
                    }
                        .swipeActions(edge: .leading,
                            allowsFullSwipe: true){
                            Button("Sahre"){
                                
                            }
                            .tint(.yellow)
                        }
            }
        }
        
    }
}

#Preview {
    ListSwipeActions_05()
}
