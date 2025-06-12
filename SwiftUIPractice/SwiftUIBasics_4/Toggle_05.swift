//
//  Toggle_05.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct Toggle_05: View {
    @State var toggleIsOn = false
    var body: some View {
        
        HStack{
            Text("Status:")
            Text(toggleIsOn ? "Online" : "Offline")
            
        }
        .font(.title)
        VStack{
            Toggle("Change Status", isOn: $toggleIsOn)
                .toggleStyle(SwitchToggleStyle(tint: Color.blue))
                .font(.headline)
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    Toggle_05()
}
