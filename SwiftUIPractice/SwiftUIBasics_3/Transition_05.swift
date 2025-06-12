//
//  Transition_05.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct Transition_05: View {
    @State var showView : Bool = false
    var body: some View {
        
        ZStack(alignment: .bottom){
            VStack{
                Button("button".uppercased()){
                    showView.toggle()
                }
                Spacer()
                if showView{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                       // .transition(.slide)
                        //.transition(.move(edge: .bottom))
                        //.transition(AnyTransition.scale.animation(.easeInOut))
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading),
                            removal: .move(edge: .trailing)))
                    .animation(.easeInOut)
                }
                
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

#Preview {
    Transition_05()
}
