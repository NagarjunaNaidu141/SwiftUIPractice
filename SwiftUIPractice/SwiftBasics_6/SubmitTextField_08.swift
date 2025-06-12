//
//  SubmitTextField_08.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 19/06/25.
//

import SwiftUI

struct SubmitTextField_08: View {
    @State private var text = ""
    var body: some View {
        VStack{
            TextField("placeholer",text: $text)
                .submitLabel(.return)
                .onSubmit {
                   
                    print("Submitted successfully!")
                }
            
            TextField("placeholer",text: $text)
                .submitLabel(.continue)
                .onSubmit {
                   
                    print("Submitted successfully!")
                }
            
            TextField("placeholer",text: $text)
                .submitLabel(.next)
                .onSubmit {
                   
                    print("Submitted successfully!")
                }
            
            TextField("placeholer",text: $text)
                .submitLabel(.send)
                .onSubmit {
                   
                    print("Submitted successfully!")
                }
        }
        
    }
}

#Preview {
    SubmitTextField_08()
}
