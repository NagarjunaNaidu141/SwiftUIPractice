//
//  Initilizer_01.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 10/06/25.
//

import SwiftUI

struct Initilizer_01: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit){
        //self.backgroundColor = backgroundColor
        self.count = count
        if fruit == .apple{
            self.title = "Apple"
            self.backgroundColor = .red
        }else{
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    enum Fruit{
        case apple
        case orange
    }
    var body: some View {
        
        VStack(spacing: 12){
            Text("\(count)")
                .font(.title)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.title2)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        //.background(Color.pink)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

#Preview {
    HStack {
        Initilizer_01(count: 50, fruit: .apple)
        Initilizer_01(count: 40, fruit: .orange)
    }
   
}
