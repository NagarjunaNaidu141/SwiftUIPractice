//
//  ForEach_02.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 10/06/25.
//

import SwiftUI

struct ForEach_02: View {
    let data:[String] = ["hi","hello","welcome"]
    let colors:[Color] = [.red,.green,.blue]
    var body: some View {
        
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
            HStack {
                ForEach(colors.indices){ index in
                    Circle()
                    
                        .fill(colors[index])
                        .frame(width: 50,height: 50)
                }
            }
        }
    }
}

#Preview {
    ForEach_02()
}
