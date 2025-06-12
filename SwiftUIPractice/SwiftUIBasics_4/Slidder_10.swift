//
//  Slidder_10.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct Slidder_10: View {
    @State var sliderValue: Double = 3.0
    @State var bcolor: Color = .blue
    var body: some View {
        
        VStack{
            Text("Rating ")
                .font(.title)
            Text(
                String(format: "%.0f", sliderValue)
            
            )
            .foregroundColor(bcolor)
            //Slider(value: $sliderValue)
           // Slider(value: $sliderValue, in: 1...5)
           // Slider(value: $sliderValue, in: 1...5, step: 0.5)
                .padding()
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    bcolor = .red
                    
                },
                minimumValueLabel: Text("1")
                    .font(.title)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title ")
                })
            .accentColor(.red)
        }
    }
}

#Preview {
    Slidder_10()
}
